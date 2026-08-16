<script setup lang="ts">
import { computed, nextTick, watch } from 'vue'
import { useNav } from '@slidev/client'

const { slides, currentSlideNo, go, isPrintMode } = useNav()

const visible = computed(() => !isPrintMode.value)

function cleanTitle(raw: unknown, no: number) {
  const text = String(raw ?? '')
    .replace(/<[^>]*>/g, '')
    .replace(/&nbsp;/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()
  return text || `Slajd ${no}`
}

const items = computed(() =>
  slides.value.map(route => ({
    no: route.no,
    title: cleanTitle(route.meta?.slide?.title, route.no),
  })),
)

async function scrollActiveIntoView() {
  await nextTick()
  document
    .querySelector('.aca-sidebar-item.active')
    ?.scrollIntoView({ block: 'nearest' })
}

watch(currentSlideNo, scrollActiveIntoView)
</script>

<template>
  <aside v-if="visible" class="aca-sidebar" aria-label="Spis slajdów">
    <div class="aca-sidebar-head">
      <strong>AI Career Advisor</strong>
      <span>Warsztaty</span>
    </div>
    <nav class="aca-sidebar-nav">
      <button
        v-for="item in items"
        :key="item.no"
        type="button"
        class="aca-sidebar-item"
        :class="{ active: item.no === currentSlideNo }"
        :title="item.title"
        @click="go(item.no)"
      >
        <span class="aca-sidebar-no">{{ item.no }}</span>
        <span class="aca-sidebar-title">{{ item.title }}</span>
      </button>
    </nav>
  </aside>
</template>
