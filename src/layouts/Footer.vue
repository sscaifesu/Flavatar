<template>
  <footer class="footer">
    <div
      data-message="If you are deploying to your own public website, please do not modify it unless you have permission from the original author."
    >
      Power by
      <a
        class="link"
        href="https://loner.vip"
        target="_blank"
        rel="nofollow noopener noreferrer"
      >
        Loner
      </a>
    </div>

    <div class="divider">|</div>

    <div class="locale" @click="switchLocale">
      {{ locale === Locale.EN ? '简体中文' : 'English' }}
    </div>

    <div class="divider">|</div>
    
    <a
        class="link"
        href="https://github.com/sscaifesu/Flavatar"
        target="_blank"
        rel="nofollow noopener noreferrer"
      >
        Github
      </a>
  </footer>
</template>

<script lang="ts" setup>
import { useI18n } from 'vue-i18n'

import { Locale } from '@/enums'

const { locale } = useI18n()

function switchLocale() {
  locale.value = locale.value === Locale.EN ? Locale.ZH : Locale.EN
}
</script>

<style lang="scss" scoped>
@use 'src/styles/var';

.footer {
  display: flex;
  align-items: center;
  justify-content: center;
  height: var.$layout-footer-height;
  padding: 0.8rem 0;
  color: rgba(var.$color-text, 0.4);
  font-weight: bold;
  font-size: 0.8rem;

  .divider {
    padding: 0 1rem;
  }

  .locale {
    cursor: pointer;
  }

  .link,
  .locale {
    transition: color 0.2s;

    &:hover {
      color: var.$color-text;
    }
  }
}
</style>
