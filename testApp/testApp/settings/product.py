from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

# ドメイン名を入れる
ALLOWED_HOSTS = ["*"]

# Database
# https://docs.djangoproject.com/en/2.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.path.join(BASE_DIR, 'testApp'),
        'USER': 'testApp',
        'PASSWORD': 'testApp',
        'HOST': 'mysql',
        'PORT': '3306',
    }
}

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.1/howto/static-files/

STATIC_URL = '/static/'