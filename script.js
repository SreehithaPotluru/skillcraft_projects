const quizData = [
  {
    type: "single",
    question: "Which language runs in a web browser?",
    options: ["Java", "C", "Python", "JavaScript"],
    answer: "JavaScript"
  },
  {
    type: "multi",
    question: "Select all programming languages:",
    options: ["HTML", "CSS", "Python", "Java"],
    answer: ["Python", "Java"]
  },
  {
    type: "blank",
    question: "Fill in the blank: CSS stands for ______.",
    answer: "Cascading Style Sheets"
  }
];

let currentQuestion = 0;
let score = 0;

const questionEl = document.getElementById("question");
const optionsEl = document.getElementById("options");
const fillBlankEl = document.getElementById("fillBlank");
const submitBtn = document.getElementById("submit");
const resultEl = document.getElementById("result");

function loadQuestion() {
  const q = quizData[currentQuestion];
  questionEl.textContent = q.question;
  optionsEl.innerHTML = "";
  fillBlankEl.style.display = "none";

  if (q.type === "single") {
    q.options.forEach(opt => {
      const label = document.createElement("label");
      label.innerHTML = `<input type="radio" name="option" value="${opt}"> ${opt}`;
      optionsEl.appendChild(label);
    });
  } else if (q.type === "multi") {
    q.options.forEach(opt => {
      const label = document.createElement("label");
      label.innerHTML = `<input type="checkbox" name="option" value="${opt}"> ${opt}`;
      optionsEl.appendChild(label);
    });
  } else if (q.type === "blank") {
    fillBlankEl.style.display = "block";
  }
}

function checkAnswer() {
  const q = quizData[currentQuestion];
  let userAnswer;

  if (q.type === "single") {
    const selected = document.querySelector('input[name="option"]:checked');
    if (selected) userAnswer = selected.value;
  } else if (q.type === "multi") {
    const selected = [...document.querySelectorAll('input[name="option"]:checked')].map(el => el.value);
    userAnswer = selected;
  } else if (q.type === "blank") {
    userAnswer = fillBlankEl.value.trim();
  }

  if (q.type === "multi") {
    if (JSON.stringify(userAnswer.sort()) === JSON.stringify(q.answer.sort())) {
      score++;
    }
  } else if (userAnswer === q.answer) {
    score++;
  }

  currentQuestion++;
  if (currentQuestion < quizData.length) {
    loadQuestion();
  } else {
    showResult();
  }
}

function showResult() {
  questionEl.textContent = "";
  optionsEl.innerHTML = "";
  fillBlankEl.style.display = "none";
  submitBtn.style.display = "none";
  resultEl.textContent = `Your score: ${score} / ${quizData.length}`;
}

submitBtn.addEventListener("click", checkAnswer);

loadQuestion();
