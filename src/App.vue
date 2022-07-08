<template>
  <main class="main-container">
    <section class="profile-container">
      <div class="profile-section1">
        <div class="profile-picture-container">
          <img class="profile-picture" src="./assets/image-jeremy.png" alt="Jeremy">
        </div>
        <div class="profile-information">
          <p class="report">Report for</p>
          <p class="name">Jeremy Robson</p>
        </div>
      </div>
      <div class="profile-section2">
        <button class="period-selection" :class="{'selected': dailyActive,'not-selected': !dailyActive}" @click="dailyActivation">Daily</button>
        <button class="period-selection" :class="{'selected': weeklyActive,'not-selected': !weeklyActive}" @click="weeklyActivation">Weekly</button>
        <button class="period-selection" :class="{'selected': monthlyActive,'not-selected': !monthlyActive}" @click="monthlyActivation">Monthly</button>
      </div>
    </section>
    <section class="cards-container">
      <div class="cards-section section1">
        <CardType :value="work" :periodValue="actualPeriod" :dailyActive="dailyActive" :weeklyActive="weeklyActive" :monthlyActive="monthlyActive"/>
        <CardType :value="play" :periodValue="actualPeriod" :dailyActive="dailyActive" :weeklyActive="weeklyActive" :monthlyActive="monthlyActive"/>
        <CardType :value="study" :periodValue="actualPeriod" :dailyActive="dailyActive" :weeklyActive="weeklyActive" :monthlyActive="monthlyActive"/>
      </div>
      <div class="cards-section section2">
        <CardType :value="excercise" :periodValue="actualPeriod" :dailyActive="dailyActive" :weeklyActive="weeklyActive" :monthlyActive="monthlyActive"/>
        <CardType :value="social" :periodValue="actualPeriod" :dailyActive="dailyActive" :weeklyActive="weeklyActive" :monthlyActive="monthlyActive"/>
        <CardType :value="selfCare" :periodValue="actualPeriod" :dailyActive="dailyActive" :weeklyActive="weeklyActive" :monthlyActive="monthlyActive"/>
      </div>
    </section>
  </main>
</template>

<script setup>
import CardType from './components/CardType.vue';
import {  reactive, ref } from "vue";

const jsonURL = require("./assets/data.json");
const work = "work";
const study = "study";
const play = "play";
const excercise = "excercise";
const social = "social";
const selfCare = "selfCare";

let actualPeriod = reactive({
  workTitle: jsonURL[0].title,
  playTitle: jsonURL[1].title,
  studyTitle: jsonURL[2].title,
  excerciseTitle: jsonURL[3].title,
  socialTitle: jsonURL[4].title,
  selfCareTitle: jsonURL[5].title,

  workActualHour: `${jsonURL[0].timeframes.daily.current}hrs`,
  workActualHourWeekly: `${jsonURL[0].timeframes.weekly.current}hrs`,
  workActualHourMonthly: `${jsonURL[0].timeframes.monthly.current}hrs`,
  workPreviousHour: `Last day - ${jsonURL[0].timeframes.daily.previous}hrs`,
  workPreviousHourWeekly: `Last week - ${jsonURL[0].timeframes.weekly.previous}hrs`,
  workPreviousHourMonthly: `Last month - ${jsonURL[0].timeframes.monthly.previous}hrs`,

  playActualHour: `${jsonURL[1].timeframes.daily.current}hrs`,
  playActualHourWeekly: `${jsonURL[1].timeframes.weekly.current}hrs`,
  playActualHourMonthly: `${jsonURL[1].timeframes.monthly.current}hrs`,
  playPreviousHour: `Last day - ${jsonURL[1].timeframes.daily.previous}hrs`,
  playPreviousHourWeekly: `Last week - ${jsonURL[1].timeframes.weekly.previous}hrs`,
  playPreviousHourMonthly: `Last month - ${jsonURL[1].timeframes.monthly.previous}hrs`,
  
  studyActualHour: `${jsonURL[2].timeframes.daily.current}hrs`,
  studyActualHourWeekly: `${jsonURL[2].timeframes.weekly.current}hrs`,
  studyActualHourMonthly: `${jsonURL[2].timeframes.monthly.current}hrs`,
  studyPreviousHour: `Last day - ${jsonURL[2].timeframes.daily.previous}hrs`,
  studyPreviousHourWeekly: `Last week - ${jsonURL[2].timeframes.weekly.previous}hrs`,
  studyPreviousHourMonthly: `Last month - ${jsonURL[2].timeframes.monthly.previous}hrs`,
  
  excerciseActualHour: `${jsonURL[3].timeframes.daily.current}hrs`,
  excerciseActualHourWeekly: `${jsonURL[3].timeframes.weekly.current}hrs`,
  excerciseActualHourMonthly: `${jsonURL[3].timeframes.monthly.current}hrs`,
  excercisePreviousHour: `Last day - ${jsonURL[3].timeframes.daily.previous}hrs`,
  excercisePreviousHourWeekly: `Last week - ${jsonURL[3].timeframes.weekly.previous}hrs`,
  excercisePreviousHourMonthly: `Last month - ${jsonURL[3].timeframes.monthly.previous}hrs`,
  
  socialActualHour: `${jsonURL[4].timeframes.daily.current}hrs`,
  socialActualHourWeekly: `${jsonURL[4].timeframes.weekly.current}hrs`,
  socialActualHourMonthly: `${jsonURL[4].timeframes.monthly.current}hrs`,
  socialPreviousHour: `Last day - ${jsonURL[4].timeframes.daily.previous}hrs`,
  socialPreviousHourWeekly: `Last week - ${jsonURL[4].timeframes.weekly.previous}hrs`,
  socialPreviousHourMonthly: `Last month - ${jsonURL[4].timeframes.monthly.previous}hrs`,
  
  selfCareActualHour: `${jsonURL[5].timeframes.daily.current}hrs`,
  selfCareActualHourWeekly: `${jsonURL[5].timeframes.weekly.current}hrs`,
  selfCareActualHourMonthly: `${jsonURL[5].timeframes.monthly.current}hrs`,
  selfCarePreviousHour: `Last day - ${jsonURL[5].timeframes.daily.previous}hrs`,
  selfCarePreviousHourWeekly: `Last week - ${jsonURL[5].timeframes.weekly.previous}hrs`,
  selfCarePreviousHourMonthly: `Last month - ${jsonURL[5].timeframes.monthly.previous}hrs`,

  
});
let dailyActive = ref(true);
let weeklyActive = ref(false);
let monthlyActive = ref(false);

const dailyActivation = () => {
  actualPeriod.value = "daily";
  dailyActive.value = true;
  weeklyActive.value = false;
  monthlyActive.value = false;
}
const weeklyActivation = () => {
  actualPeriod.valor1 = "weekly";
  dailyActive.value = false;
  weeklyActive.value = true;
  monthlyActive.value = false;
}
const monthlyActivation = () => {
  actualPeriod.value = "monthly";
  dailyActive.value = false;
  weeklyActive.value = false;
  monthlyActive.value = true;
}

</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300;400;500&display=swap');
#app {
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: 'Rubik', sans-serif;
}
body {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  background-color: #0d1323;
}
main {
  width: 1140px;
  height: 540px;
  display: flex;
  gap: 30px;
}
.profile-container {
  width: 23%;
  height: 100%;
  border-radius: 15px;
  background-color: #1D204B;
}
.profile-section1 {
  height: 368px;
  padding-left: 30px;
  border-radius: 15px;
  background-color: #5746EA;
}
.profile-picture-container {
  display: flex;
  height: 30%;
  padding: 30px 0 30px;
}
.profile-picture {
  width: 90px;
  height: 90px;
  border: solid 4px white;
  border-radius: 50%;
}
.profile-information {
  display: flex;
  flex-direction: column;
}
.report {
  font-size: 15px;
  font-weight: 400;
  margin: 0;
  color: #b5b3f0;
}
.name {
  font-size: 40px;
  font-weight: 300;
  margin: 0;
  margin-top: 5px;
  color: #f1efff;
}
.profile-section2 {
  height: 172px;
  padding-left: 30px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: flex-start;
  gap: 25px;
}
.period-selection {
  background: none;
  font: inherit;
  font-size: 18px;
  font-weight: 300;
	border: none;
	padding: 0;
  cursor: pointer;
}
.not-selected {
  color: #676ca6;
}
.selected {
  color: #fbfeff;
}            
.period-selection:hover {
  color: #fbfeff;
}
.cards-container {
  width: 77%;
  height: 100%;
  display: flex;
  flex-direction: column;
}
.cards-section {
  height: 50%;
  display: flex;
}
.section1 {
  justify-content: space-between;
}
.section2 {
  justify-content: space-between;
  align-items: flex-end;
}

@media screen and (max-width: 425px) {
  #app {
    height: auto;
    margin-top: -60px;
  }
  main {
    width: 100%;
    align-items: center;
    height: auto;
    flex-direction: column;
    gap: 0;
    margin-bottom: 30px;
  }
  .profile-container {
    width: 90%;
    height: auto;
    margin-top: 100px;
    margin-bottom: 20px;
  }
  .profile-section1 {
    display: flex;
    gap: 15px;
    align-items: center;
    height: 130px;
  }
  .profile-section2 {
    height: 80px;
    flex-direction: row;
    align-items: center;
    padding: 0 15px;
    justify-content: space-around;
  }
  .profile-picture-container {
    height: 100%;
    align-items: center;
    padding: 0;
  }
  .profile-picture {
    width: 60px;
    height: 60px;
  }
  .name {
    font-size: 22px;
  }
  .cards-container {
    width: 90%;
    gap: 20px;
    height: auto;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
  }
  .section1, .section2 {
    width: 100%;
    flex-direction: column;
    gap: 20px;
  }
}
</style>
