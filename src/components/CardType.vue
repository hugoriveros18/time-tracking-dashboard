<template>
  <div class="general-container" :class="backgroundCards">
    <picture class="card-img-container">
      <img class="card-img" :class="{'study-exception':isExcercise}" :src="urlImages" alt="">
    </picture>
    <div class="info-container">
      <div class="title-container">
        <p v-if="props.value == work">{{ props.periodValue.workTitle }}</p>
        <p v-if="props.value == study">{{ props.periodValue.studyTitle }}</p>
        <p v-if="props.value == play">{{ props.periodValue.playTitle }}</p>
        <p v-if="props.value == excercise">{{ props.periodValue.excerciseTitle }}</p>
        <p v-if="props.value == social">{{ props.periodValue.socialTitle }}</p>
        <p v-if="props.value == selfCare">{{ props.periodValue.selfCareTitle }}</p>
        <img src="../assets/icon-ellipsis.svg" alt="">
      </div>
      <div class="time-information-container">
        <!-- ACTUAL HOUR INFORMATION -->
        <p v-if="props.value == work && props.dailyActive" class="big">{{ props.periodValue.workActualHour }}</p>
        <p v-if="props.value == work && props.weeklyActive" class="big">{{ props.periodValue.workActualHourWeekly }}</p>
        <p v-if="props.value == work && props.monthlyActive" class="big">{{ props.periodValue.workActualHourMonthly }}</p>


        <p v-if="props.value == study && props.dailyActive" class="big">{{ props.periodValue.studyActualHour }}</p>
        <p v-if="props.value == study && props.weeklyActive" class="big">{{ props.periodValue.studyActualHourWeekly }}</p>
        <p v-if="props.value == study && props.monthlyActive" class="big">{{ props.periodValue.studyActualHourMonthly }}</p>


        <p v-if="props.value == play && props.dailyActive" class="big">{{ props.periodValue.playActualHour }}</p>
        <p v-if="props.value == play && props.weeklyActive" class="big">{{ props.periodValue.playActualHourWeekly }}</p>
        <p v-if="props.value == play && props.monthlyActive" class="big">{{ props.periodValue.playActualHourMonthly }}</p>


        <p v-if="props.value == excercise && props.dailyActive" class="big">{{ props.periodValue.excerciseActualHour }}</p>
        <p v-if="props.value == excercise && props.weeklyActive" class="big">{{ props.periodValue.excerciseActualHourWeekly }}</p>
        <p v-if="props.value == excercise && props.monthlyActive" class="big">{{ props.periodValue.excerciseActualHourMonthly }}</p>


        <p v-if="props.value == social && props.dailyActive" class="big">{{ props.periodValue.socialActualHour }}</p>
        <p v-if="props.value == social && props.weeklyActive" class="big">{{ props.periodValue.socialActualHourWeekly }}</p>
        <p v-if="props.value == social && props.monthlyActive" class="big">{{ props.periodValue.socialActualHourMonthly }}</p>


        <p v-if="props.value == selfCare && props.dailyActive" class="big">{{ props.periodValue.selfCareActualHour }}</p>
        <p v-if="props.value == selfCare && props.weeklyActive" class="big">{{ props.periodValue.selfCareActualHourWeekly }}</p>
        <p v-if="props.value == selfCare && props.monthlyActive" class="big">{{ props.periodValue.selfCareActualHourMonthly }}</p>

        <!-- PREVIOUS HOUR INFORMATION -->
        <p v-if="props.value == work && props.dailyActive" class="small">{{ props.periodValue.workPreviousHour }}</p>
        <p v-if="props.value == work && props.weeklyActive" class="small">{{ props.periodValue.workPreviousHourWeekly }}</p>
        <p v-if="props.value == work && props.monthlyActive" class="small">{{ props.periodValue.workPreviousHourMonthly }}</p>
        
        
        <p v-if="props.value == study && props.dailyActive" class="small">{{ props.periodValue.studyPreviousHour }}</p>
        <p v-if="props.value == study && props.weeklyActive" class="small">{{ props.periodValue.studyPreviousHourWeekly }}</p>
        <p v-if="props.value == study && props.monthlyActive" class="small">{{ props.periodValue.studyPreviousHourMonthly }}</p>
        
        
        <p v-if="props.value == play && props.dailyActive" class="small">{{ props.periodValue.playPreviousHour }}</p>
        <p v-if="props.value == play && props.weeklyActive" class="small">{{ props.periodValue.playPreviousHourWeekly }}</p>
        <p v-if="props.value == play && props.monthlyActive" class="small">{{ props.periodValue.playPreviousHourMonthly }}</p>


        <p v-if="props.value == excercise && props.dailyActive" class="small">{{ props.periodValue.excercisePreviousHour }}</p>
        <p v-if="props.value == excercise && props.weeklyActive" class="small">{{ props.periodValue.excercisePreviousHourWeekly }}</p>
        <p v-if="props.value == excercise && props.monthlyActive" class="small">{{ props.periodValue.excercisePreviousHourMonthly }}</p>
        
        <p v-if="props.value == social && props.dailyActive" class="small">{{ props.periodValue.socialPreviousHour }}</p>
        <p v-if="props.value == social && props.weeklyActive" class="small">{{ props.periodValue.socialPreviousHourWeekly }}</p>
        <p v-if="props.value == social && props.monthlyActive" class="small">{{ props.periodValue.socialPreviousHourMonthly }}</p>


        <p v-if="props.value == selfCare && props.dailyActive" class="small">{{ props.periodValue.selfCarePreviousHour }}</p>
        <p v-if="props.value == selfCare && props.weeklyActive" class="small">{{ props.periodValue.selfCarePreviousHourWeekly }}</p>
        <p v-if="props.value == selfCare && props.monthlyActive" class="small">{{ props.periodValue.selfCarePreviousHourMonthly }}</p>

      </div>
    </div>
  </div>
</template>

<script setup>
import { defineProps, computed, ref } from "vue";
const work = "work";
const study = "study";
const play = "play";
const excercise = "excercise";
const social = "social";
const selfCare = "selfCare";

const props = defineProps({
    value: String,
    periodValue: Object,
    dailyActive: Boolean,
    weeklyActive: Boolean,
    monthlyActive: Boolean
})
let isExcercise = ref(false)
if(props.value == "excercise") {
  isExcercise.value = true
}
let backgroundCards = computed(() => {
  switch (props.value) {
    case "work":
      return ".general-container work-container";
    case "study":
      return ".general-container study-container";
    case "play":
      return ".general-container play-container";
    case "social":
      return ".general-container social-container";
    case "excercise":
      return ".general-container excercise-container";
    case "selfCare":
      return ".general-container selfCare-container"
    default:
      return ".general-container";
  }
})
let urlImages = computed(() => {
  switch (props.value) {
    case "work":
      return require("../assets/icon-work.svg");
    case "study":
      return require("../assets/icon-study.svg");
    case "play":
      return require("../assets/icon-play.svg");
    case "social":
      return require("../assets/icon-social.svg");
    case "excercise":
      return require("../assets/icon-exercise.svg");
    case "selfCare":
      return require("../assets/icon-self-care.svg");
    default:
      return require("../assets/icon-work.svg");
  }
});
</script>

<style scoped>
.general-container {
  width: 270px;
  height: 254px;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  border-radius: 16px;
}
.card-img-container {
  height: 50px;
  width: 100%;
  display: grid;
  justify-content: end;
  overflow: hidden;
}
.card-img {
  width: 80px;
  right: 10px;
  position: relative;
  right: 20px;
  bottom: 10px;
  z-index: 0;
}
.study-exception {
  bottom: 2px;
}
.info-container {
  width: 100%;
  height: 202px;
  border-radius: 15px;
  z-index: 1;
  background-color: #1D204B;
}
.info-container:hover {
  background-color: #34397b;
  cursor: pointer;
}
.title-container {
  box-sizing: border-box;
  width: 100%;
  height: 35%;
  padding: 0 30px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.title-container p {
  font-size: 20px;
  color: #FFFFFF;
}
.title-container img {
  width: 21px;
  height: 5px;
}
.time-information-container {
  display: flex;
  flex-direction: column;
  gap: 10px;
  padding: 10px 0 0 30px;
  color: #FFFFFF;
}
.big {
  margin: 0;
  font-size: 50px;
  font-weight: 300;  
}
.small {
  margin: 0;
  font-size: 14px;
  font-weight: 300;
}

.work-container {
  background-color:  hsl(15, 100%, 70%);
}
.play-container {
  background-color: hsl(195, 74%, 62%);
}
.study-container {
  background-color:  hsl(348, 100%, 68%);
}
.excercise-container {
  background-color: hsl(145, 58%, 55%);
}
.social-container {
  background-color: hsl(264, 64%, 52%);
}
.selfCare-container {
  background-color: hsl(43, 84%, 65%);
}

@media screen and (max-width: 425px) {
  .general-container{
    width: 100%;
    height: 155px;
  }
  .info-container {
    height: auto;
    display: flex;
    flex-direction: column;
    gap: 8px;
  }
  .title-container {
    padding-top: 15px;
  }
  .time-information-container {
    padding: 0 30px;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    gap: 30px;
  }
  .big {
    font-size: 30px;
  }
  .small {
    font-size: 15px;
  }  
}
</style>


// 'work-container':props.value == work, 'play-container':props.value == play, 'study-container':props.value == study, 'excercise-container':props.value == excercise, 'social-container':props.value == social, 'self-container':props.value == selfCare