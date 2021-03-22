#! /bin/bash


WAVERNN_CONFIG_PATH="scripts/persian_commonvoice_demo/config_wavernn.yml"
WAVERNN_CHECKPOINT_PATH="scripts/persian_commonvoice_demo/ckpt_wavernn_libritts.pt"
TACOTRON_CONFIG_PATH="scripts/persian_commonvoice_demo/config_tacotron.yml"
TACOTRON_CHECKPOINT_PATH="scripts/persian_commonvoice_demo/ckpt_tacotron_itr80.pt"

LANG="fa"

# INP_TEXT="صاحب قصر زنی بود با لباس‌هایِ بسیار مجلل و خدم و حشمِ فراوان که به گرمی از مسافرین پذیرایی کرد."
# FILENAME="sahebe_ghasr"

# INP_TEXT="با روی کار آمدنِ مشروطیت در ایران، تئاتر پیشرفتِ بیشتری کرد."
# FILENAME="mashrootiat"

# INP_TEXT="قدیمی‌ترین مرکزِ آموزشِ عالیِ نوین و بزرگ‌ترین دانشگاهِ علوم پزشکی ایران دانشگاه علوم پزشکیِ تهران است که در سالِ ۱۳۱۳ تأسیس شد."
# FILENAME="daneshgah"

# INP_TEXT="در انسان‌ها این مولکول یک مولکولِ مهم در پیام رسانیِ سلولی است که در بسیاری از فرایندهای  فیزیولوژیک و پاتولوژیک دخالت دارد."
# FILENAME="ensan"

# INP_TEXT="بر أساس گزارشی از سازمانِ جهانی بهداشت، آلودگی هوا در سال ۲۰۱۲ باعث مرگِ ۷ میلیون انسان در سراسر جهان شده‌است."
# FILENAME="sazmane_behdasht"

# INP_TEXT=" یادگیریِ تحت نظارت نیازمند تعدادی داده ورودی به منظور آموزش سیستم است."
# FILENAME="yadgiri"

# INP_TEXT="شیش سیخ جیگر سیخی شیش هزار."
# FILENAME="shish"

# INP_TEXT="سه دزد رفتن به بز دزدی ُ یه دزد یه بز دزدید ُ یه دزد دو بز دزدید."
# FILENAME="boz"

# INP_TEXT="جنگل‌های بارانی «جواهراتِ زمین» و «بزرگترین داروخانه‌ی زمین» نامیده شده‌اند."
# FILENAME="jangal"

INP_TEXT="$1"
FILENAME="$2"
OUTPUT_PATH="$3"

python -m tac2persian.generate --wavernn_config_path="$WAVERNN_CONFIG_PATH"\
                               --wavernn_checkpoint_path="$WAVERNN_CHECKPOINT_PATH"\
                               --tacotron_config_path="$TACOTRON_CONFIG_PATH"\
                               --tacotron_checkpoint_path="$TACOTRON_CHECKPOINT_PATH"\
                               --output_path="$OUTPUT_PATH" \
                               --inp_text="$INP_TEXT"\
                               --lang="$LANG" \
                               --filename="$FILENAME"
