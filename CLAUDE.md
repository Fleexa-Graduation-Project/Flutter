# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

**Fleexa** — A Flutter smart home / IoT mobile app (graduation project). Targets Android and iOS. Firebase project ID: `fleexa-d36d3`.

## Common Commands

```bash
flutter pub get          # Install dependencies
flutter run              # Run on connected device/emulator
flutter build apk        # Build Android APK
flutter build appbundle  # Build Android App Bundle
flutter analyze          # Run static analysis
flutter test             # Run all tests
flutter gen-l10n         # Regenerate localization files (lib/generated/)
```

To regenerate app icons or splash screen after changing assets:
```bash
flutter pub run flutter_launcher_icons
flutter pub run flutter_native_splash:create
```

## Architecture

Clean Architecture with feature-based modules under `lib/Features/`. Each feature typically has:
- `data/` — repository implementations + models
- `presentation/` — screens, widgets, cubits + states

### Dependency Injection

GetIt service locator, configured in [lib/core/utils/service_locator.dart](lib/core/utils/service_locator.dart). All repositories and services are registered as lazy singletons here. Register new services/repos here before use.

### State Management

BLoC via Cubits. Each cubit has a corresponding state sealed class (Loading / Loaded / Error). `HydratedCubit` is used for state that must persist across restarts (e.g., `LocalizationCubit`). HydratedBloc storage is initialized in `main.dart` before `runApp`.

### Routing

GoRouter, defined in [lib/core/router/app_router.dart](lib/core/router/app_router.dart). All route name constants are static fields on the `AppRouter` class. Route-level `MultiBlocProvider` wrappers are used to scope cubits to specific routes.

### API Layer

- **Client:** Dio, configured in [lib/core/network/api_service.dart](lib/core/network/api_service.dart) — 45 s timeout, JSON headers, auth Bearer token interceptor (token management is a TODO).
- **Environment switching:** [lib/core/network/api_constants.dart](lib/core/network/api_constants.dart) — change `AppEnvironment` between `mock` (Postman mock), `dev` (AWS API Gateway), and `prod`. Currently set to `mock`.
- **Repositories** call `ApiService` and throw typed exceptions; cubits catch them and emit error states.

### Localization

English and Arabic. ARB source files in `lib/l10n/`; generated Dart code lives in `lib/generated/intl/`. Use `flutter gen-l10n` to regenerate after editing ARBs. Language is toggled at runtime via `LocalizationCubit` (persisted with HydratedCubit).

## API Contract

Base path: `/api/v1`. All device IDs are fixed strings (`temp-sensor-01`, `light-sensor-01`, `gas-sensor-01`, `door-actuator-01`, `ac-actuator-01`).

| # | Method | Path | Notes |
|---|--------|------|-------|
| 1 | GET | `/system/overview?period=24h\|7d\|1m` | System status, alerts chart (warning/critical), energy chart |
| 2 | GET | `/devices` | All 5 devices; each has `device_id`, `type`, `status`, `operational_state`, `health`, `payload`, `last_seen_at` |
| 3 | GET | `/devices/{id}` | Full device detail; payload shape differs per device type |
| 4 | GET | `/devices/{id}/telemetry?period=24h\|7d\|1m&metric={metric}` | Chart data (`data[]` + `chart_max`); metric key is device-type-specific (`temp`, `light_level`, `gas_level`, `power_state`) |
| 5 | GET | `/devices/{id}/alerts` | Device-scoped alert history; items have `severity` (WARNING / CRITICAL) |
| 6 | POST | `/devices/{id}/commands` | Body: `{ request_id, action, parameters }`; returns 202 |
| 7 | GET | `/alerts` | All-device alerts sorted by timestamp desc |

Device `payload` shapes by type:
- **temp-sensor:** `temp`, `Min`, `Max`, `Average`
- **light-sensor:** `light_level`, `light_status`
- **gas-sensor:** `gas_level`, `status`, `alarm_on`, `recent_events[]`
- **door-actuator:** `lock_state`, `open`, `security_alert`, `last_activity_time`, `average_unlock`, `unlock_duration_status`, `recent_events[]`
- **ac-actuator:** `power_state`, `mode`, `target_temp`, `last_turned_on`, `timer_end_timestamp`, `inside_temp`, `outside_temp`, `time_remaining`, `running_time`, `recent_events[]`

## Working Rules

### Before Writing Any Code

1. Read the relevant parts of the codebase to understand existing context.
2. Search for existing implementations — do not duplicate logic unless the new version clearly improves performance, correctness, or efficiency.

### Change Approval

Before modifying, deleting, or creating any file:

1. Show the proposed change: files affected, exact code added/removed, reasoning.
2. Wait for explicit confirmation. Never apply changes before approval.

### Collaboration

- Evaluate approaches the user proposes and explain whether they are correct, with reasoning.
- Point to relevant files or docs in the project when explaining concepts.

### Implementation Workflow

1. Understand the problem. Ask clarifying questions if needed.
2. Search the codebase for relevant files and patterns.
3. Reuse or extend existing logic wherever possible.
4. Propose modifications and wait for approval.
5. Implement with minimal changes.
6. Provide a commit message in the project's style.

## Key Conventions

- **UI scaling:** All sizes go through `flutter_screenutil` (`sp`, `w`, `h` extensions). Initialize `ScreenUtil` before using these.
- **Design tokens:** Colors → [lib/core/utils/constants/app_colors.dart](lib/core/utils/constants/app_colors.dart), text styles → `app_styles.dart`, string keys → `app_strings.dart`.
- **Icons:** Mix of `font_awesome_flutter` and custom SVGs via `flutter_svg`.
- **Charts/gauges:** Syncfusion (`syncfusion_flutter_charts`, `syncfusion_flutter_gauges`, `syncfusion_flutter_sliders`) — requires a valid Syncfusion community license key registered in `main.dart`.
- **Push notifications:** Handled by [lib/core/services/push_notification_service.dart](lib/core/services/push_notification_service.dart) using Firebase Messaging + `flutter_local_notifications`. Background handler must be a top-level function.
