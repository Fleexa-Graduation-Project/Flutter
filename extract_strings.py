import os
import re
import json

lib_dir = 'lib'
en_arb_path = 'lib/l10n/intl_en.arb'
ar_arb_path = 'lib/l10n/intl_ar.arb'

try:
    with open(en_arb_path, 'r', encoding='utf-8') as f:
        en_arb = json.load(f)
except:
    en_arb = {"@@locale": "en"}
    
try:
    with open(ar_arb_path, 'r', encoding='utf-8') as f:
        ar_arb = json.load(f)
except:
    ar_arb = {"@@locale": "ar"}

def clean_key(text):
    text = re.sub(r'[^a-zA-Z0-9\s]', '', text)
    words = text.strip().split()
    if not words:
        return None
    key = words[0].lower() + "".join(w.capitalize() for w in words[1:5])
    # check reserved words
    if key in ["continue", "default", "switch", "case", "class", "final", "catch"]:
        key += "Text"
    return key

# Match `Text('...')` and `const Text('...')`
text_pattern = re.compile(r"(const\s+)?Text\(\s*(['\"])(.*?)\2")
# Match `title: '...'`, `hintText: '...'`, `labelText: '...'`, `description: '...'`, `tooltip: '...'`
prop_pattern = re.compile(r"(title|hintText|labelText|description|tooltip|summary):\s*(['\"])(.*?)\2")

changed_files = 0
added_keys = 0

for root, dirs, files in os.walk(lib_dir):
    for file in files:
        if file.endswith('.dart') and not 'generated' in root and not 'l10n' in root:
            filepath = os.path.join(root, file)
            try:
                with open(filepath, 'r', encoding='utf-8') as f:
                    content = f.read()
            except:
                continue

            out_content = content
            modified = False

            # We process matches one by one to avoid shifting string issues, but string replacement works fine if the extracted string matches exactly.
            # To be safer, we can just use re.sub or exact replacements since we grab original_str.
            
            matches = []
            for m in text_pattern.finditer(content):
                is_const = m.group(1) is not None
                quote = m.group(2)
                text = m.group(3)
                original_str = m.group(0)
                matches.append(('Text', quote, text, original_str, is_const))
                
            for m in prop_pattern.finditer(content):
                prop_name = m.group(1)
                quote = m.group(2)
                text = m.group(3)
                original_str = m.group(0)
                matches.append((prop_name, quote, text, original_str, False))

            for item in matches:
                type_group, quote, text, original_str, is_const = item
                if not text.strip() or '$' in text or 'S.of' in text or 'S.current' in text:
                    continue
                if len(text) > 200: # allow up to 200 chars
                    continue
                # skip basic digits
                if text.strip().isdigit():
                    continue

                key = clean_key(text)
                if not key:
                    continue

                key = key[0].lower() + key[1:]

                if key not in en_arb:
                    en_arb[key] = text
                    ar_arb[key] = text
                    added_keys += 1

                if type_group == 'Text':
                    # remove const if it was const Text(...)
                    replacement = f"Text(S.of(context).{key}"
                else:
                    replacement = f"{type_group}: S.of(context).{key}"

                if original_str in out_content:
                    out_content = out_content.replace(original_str, replacement)
                    modified = True

            if modified:
                if "S.of(context)" in out_content and "generated/l10n.dart" not in out_content:
                    pkg_import = "import 'package:fleexa/generated/l10n.dart';\n"
                    # place after the last import
                    if 'import ' in out_content:
                        out_content = re.sub(r'(import .*?;)', r'\1\n' + pkg_import, out_content, count=1)
                    else:
                        out_content = pkg_import + out_content

                with open(filepath, 'w', encoding='utf-8') as f:
                    f.write(out_content)
                changed_files += 1

with open(en_arb_path, 'w', encoding='utf-8') as f:
    json.dump(en_arb, f, indent=2, ensure_ascii=False)
with open(ar_arb_path, 'w', encoding='utf-8') as f:
    json.dump(ar_arb, f, indent=2, ensure_ascii=False)

print(f"Updated {changed_files} files, added {added_keys} new keys.")
