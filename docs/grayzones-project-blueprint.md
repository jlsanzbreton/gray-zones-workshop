
# 🧠 Gray Zones & Catastrophes — Project Blueprint v1.3

> A dual-mode, offline-first application for reflecting on ambiguous systemic scenarios.

---

## 🎯 Summary

This app helps users map and reflect on "gray zones"—situations with unclear boundaries of responsibility, information, or action. It has **two main modes**: individual/team mapping and facilitator-led workshops.

---

## 🧭 App Modes

### 1. 🧍 GrayZonesMapperMode
- **For**: Individuals or collaborative teams
- **Contexts**: `personal`, `professional`, `group`, `corporate`
- **Group logic**:
  - ✅ Create team
  - ✅ Join existing team
  - ✅ Map solo
- **Core flow**:
  1. WelcomePage
  2. ScenarioMappingPage
  3. ContextProfilePage
  4. GrayZoneDashboardPage
  5. LensReflectionPage
  6. JournalPage
  7. GraynessScorePage

---

### 2. 🧑‍🏫 WorkshopMode
- **For**: Facilitator-led training and simulations
- **Roles**: `facilitator`, `participant`

#### 🧩 Facilitator Dashboard
- Zone Selector
- AI Reflection Panel
- Participant Decisions
- Workshop Controls  
➡️ DB tables: `facilitator_dashboards`, `participant_decisions`

#### 📊 Aftercare Module
- Workshop Summary
- Stats & Visuals
- Downloadable Summary (PDF/JSON)
- Aftercare Actions  
➡️ DB table: `workshop_summary`

---

## 🛠 Shared Technical Stack

- **Frontend**: React + TypeScript (Vite)
- **Styling**: Tailwind + CSS theme variables
- **State**: useAppContext + Reducer
- **Offline DB**: IndexedDB  
  - Stores: `contexts`, `gray_zone_entries`, `journal_entries`, `sync_queue`
- **Backend**: Supabase (RLS, Auth, Sync)
- **AI**: Gemini 1.5 Flash
  - Functions: tone analysis, prompt generation, summarization, action steps
  - Limits: 5/week for free users, unlimited for premium

---

## 🎨 Visual Identity

- **Light background**: `#F8F5EC`
- **Dark background**: `#121212`
- **Accent colors**: `#607D8B` / `#90A4AE`
- **Fonts**: `Inter`, `IBM Plex Serif`
- **Icons**:
  - Formats: `svg`, `png`
  - Paths: `src/assets/icons/`
  - Types: `uncertainty`, `ownership`, `constraints`, `over-reliance`, `dashboard`, `score`, `journal`, `personal`, `group`, `corporate`

---

## 🔄 Philosophical Fallback

- **When lost**: Return to flow — `Scenario → Context → Zone → Reflection → Score`
- **Golden thread**: `Definition → Reflection → Action`
- **Metaphor**: “A cognitive flashlight for blurry edges”
- **Guiding principles**:
  - Gray zones are not flaws—they're frontiers
  - Awareness leads to resilience
  - AI supports but does not decide

---

## 🤖 Copilot / AI Instructions

- Always check active mode: Mapper vs. Workshop
- Core logic in:
  - `GeminiService.ts`
  - `SupabaseService.ts`
  - `IndexedDBService.ts`
  - `GrayZoneDashboardPage.tsx`
  - `FacilitatorDashboard.tsx`

---

## 📦 Metadata

- **Author**: Jose Sanz Breton
- **Created**: 2025-06-10
- **Filename**: `grayzones.project.json`
- **Hash**: `v1.3-dual-modes`
