import 'package:green_genius/src/models/data_models/answer_model.dart';
import 'package:green_genius/src/models/data_models/question_model.dart';
import 'package:green_genius/src/models/data_models/quiz_model.dart';

List<QuizModel> quizList = [
  // ----------------------------------------------------------------------------------------------- GLOBAL WARMING
  QuizModel(
    quizName: "GLOBAL WARMING",
    imageUrl: "lib/assets/image/global_warming.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "Which of the following is a greenhouse gas that is released by human activities and contributes to global warming?",
        explanation: "Carbon dioxide is the most common greenhouse gas released by human activities, and it has the capability to absorb and radiate heat, hence contributing to global warming.",
        answers: [
          AnswerModel(answer: "Oxygen"),
          AnswerModel(answer: "Carbon Dioxide", isCorrect: true),
          AnswerModel(answer: "Hydrogen"),
          AnswerModel(answer: "Petroleum"),
        ],
      ),
      // 2
      QuestionModel(
        question: "Which of the following does not contribute to global warming?",
        explanation: "Fishing does not contribute to the emission of any greenhouse gases into the atmosphere, hence it does not contribute to global warming.",
        answers: [
          AnswerModel(answer: "Driving a car"),
          AnswerModel(answer: "Fishing", isCorrect: true),
          AnswerModel(answer: "Chopping down trees"),
          AnswerModel(answer: "Burning coal"),
        ],
      ),
      // 3
      QuestionModel(
        question: "If global warming increases, the intensity of what type of storm is likely to increase?",
        explanation: "The oceans will get warmer, which means that the oceans will have more energy to produce hurricanes with higher intensity.",
        answers: [
          AnswerModel(answer: "Tornadoes"),
          AnswerModel(answer: "Tsunamis"),
          AnswerModel(answer: "Hurricanes", isCorrect: true),
          AnswerModel(answer: "Earthquakes"),
        ],
      ),
      // 4
      QuestionModel(
        question: "Higher temperatures lead to the rise of sea levels due to the melting of what?",
        explanation: "Sea levels are predicted to rise 20 feet by 2050 if the polar ice caps continue to melt at the current rate.",
        answers: [
          AnswerModel(answer: "Mountains"),
          AnswerModel(answer: "River Beds"),
          AnswerModel(answer: "Wetlands"),
          AnswerModel(answer: "Glaciers", isCorrect: true),
        ],
      ),
      // 5
      QuestionModel(
        question: "What country produces the most Carbon Dioxide?",
        explanation: "According to most recent figures, China emits more than 7,000,000 million metric tons of carbon dioxide a year, making it the highest.",
        answers: [
          AnswerModel(answer: "China", isCorrect: true),
          AnswerModel(answer: "India"),
          AnswerModel(answer: "Russia"),
          AnswerModel(answer: "Bangladesh"),
        ],
      ),
    ],
  ),

  // ----------------------------------------------------------------------------------------------- PLASTIC POLLUTION
  QuizModel(
    quizName: "PLASTIC POLLUTION",
    imageUrl: "lib/assets/image/plastic_pollution.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "What happens to plastic when it's thrown away?",
        explanation: "Plastic breaks down into tiny fragments known as microplastics or nano-plastics. Because plastic is not biodegradable, it does not decompose fully but instead continues to break into increasingly smaller pieces over time.",
        answers: [
          AnswerModel(answer: "It fully disintegrates"),
          AnswerModel(answer: "Partially broken down", isCorrect: true),
          AnswerModel(answer: "All of it is recycled"),
          AnswerModel(answer: "None of the mentioned"),
        ],
      ),
      // 2
      QuestionModel(
        question: "Why is plastic dangerous for marine life?",
        explanation: "Many marine creatures are harmed by plastic. They undergo ingestion, suffocation and entanglement. Marine creatures such as seabirds, whales, fish and turtles mistake plastic for food and sometimes die because of this error. Plastic debris can carry pathogens and trigger an infection.",
        answers: [
          AnswerModel(answer: "Mistakes it for food"),
          AnswerModel(answer: "They get tangled in it"),
          AnswerModel(answer: "Bacteria on plastic causes coral diseases"),
          AnswerModel(answer: "All of the mentioned", isCorrect: true),
        ],
      ),
      // 3
      QuestionModel(
        question: "How many million tons of plastic is dumped into our oceans annually?",
        explanation: "According to the UNEP, at least 11 million tons of plastic is dumped into our oceans each year. That’s the equivalent of dumping one garbage truck full of plastic into the ocean every minute. If nothing is done, this number could rise to two garbage trucks a minute by 2030 and four per minute by 2050!",
        answers: [
          AnswerModel(answer: "2 million tons"),
          AnswerModel(answer: "5 million tons"),
          AnswerModel(answer: "11 million tons", isCorrect: true),
          AnswerModel(answer: "100 million tons"),
        ],
      ),
      // 4
      QuestionModel(
        question: "What percent of its plastic does the world recycle?",
        explanation: "According to official studies and reports, it was found that only 9% of all plastic is recycled around the globe.",
        answers: [
          AnswerModel(answer: "5%"),
          AnswerModel(answer: "25%"),
          AnswerModel(answer: "90%"),
          AnswerModel(answer: "9%", isCorrect: true),
        ],
      ),
      // 5
      QuestionModel(
        question: "How many marine species are harmed by plastic pollution?",
        explanation: "According to UN Reports these numbers have reached around 800 in recent years.",
        answers: [
          AnswerModel(answer: "800", isCorrect: true),
          AnswerModel(answer: "280"),
          AnswerModel(answer: "50"),
          AnswerModel(answer: "1500"),
        ],
      ),
    ],
  ),

  // ----------------------------------------------------------------------------------------------- AIR POLLUTION
  QuizModel(
    quizName: "AIR POLLUTION",
    imageUrl: "lib/assets/image/air_pollution.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "Does air quality impact human health?",
        explanation: "The quality of air we breathe in is important as it directly affects the condition of our lungs.",
        answers: [
          AnswerModel(answer: "Yes", isCorrect: true),
          AnswerModel(answer: "No"),
          AnswerModel(answer: "Maybe"),
          AnswerModel(answer: "High Probability"),
        ],
      ),
      // 2
      QuestionModel(
        question: "Which of these vehicles do not cause air pollution?",
        explanation: "Using a bicycle means that no fuel is burned, hence no carbon dioxide gas is emitted.",
        answers: [
          AnswerModel(answer: "Car"),
          AnswerModel(answer: "Lorry"),
          AnswerModel(answer: "Bicycle", isCorrect: true),
          AnswerModel(answer: "Motorcycle"),
        ],
      ),
      // 3
      QuestionModel(
        question: "Which of these is a natural source of air pollution?",
        explanation: "Volcano eruption and lava flow can release harmful gases like sulphur dioxide and volcanoes are not human-made rather it’s natural.",
        answers: [
          AnswerModel(answer: "Power Stations"),
          AnswerModel(answer: "Volcanoes", isCorrect: true),
          AnswerModel(answer: "Industries"),
          AnswerModel(answer: "Solar Panels"),
        ],
      ),
      // 4
      QuestionModel(
        question: "Which gas contributes to air pollution?",
        explanation: "Nitrogen dioxide contributes to air pollution and the chemical reactions that make ozone, and has the capability to absorb and radiate heat.",
        answers: [
          AnswerModel(answer: "Xenon"),
          AnswerModel(answer: "Water vapour"),
          AnswerModel(answer: "Nitrogen dioxide", isCorrect: true),
          AnswerModel(answer: "Fog"),
        ],
      ),
      // 5
      QuestionModel(
        question: "What is an appropriate method for measuring nitrogen dioxide levels?",
        explanation: "Since nitrogen dioxide is gaseous, using a diffusion tube would be the most appropriate way to measure the volume of the gas.",
        answers: [
          AnswerModel(answer: "A ruler"),
          AnswerModel(answer: "Petri Dish"),
          AnswerModel(answer: "Measuring tape"),
          AnswerModel(answer: "Diffusion tube", isCorrect: true),
        ],
      ),
    ],
  ),

  // ----------------------------------------------------------------------------------------------- DEFORESTATION
  QuizModel(
    quizName: "DEFORESTATION",
    imageUrl: "lib/assets/image/deforestation.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "Deforestation is the destruction of trees.",
        explanation: "Deforestation: It is the process of cutting down trees in large masses, such as in forests.",
        answers: [
          AnswerModel(answer: "Yes", isCorrect: true),
          AnswerModel(answer: "No"),
          AnswerModel(answer: "Maybe"),
          AnswerModel(answer: "High Probability"),
        ],
      ),
      // 2
      QuestionModel(
        question: "What does deforestation lead to?",
        explanation: "During deforestation, much of the carbon stored in the trees is released back into the environment, causing global warming.",
        answers: [
          AnswerModel(answer: "Cultural problems"),
          AnswerModel(answer: "Earthquakes"),
          AnswerModel(answer: "Volcano eruption"),
          AnswerModel(answer: "Global Warming", isCorrect: true),
        ],
      ),
      // 3
      QuestionModel(
        question: "Which of the following is not an effect of deforestation?",
        explanation: "All of these problems can be caused by deforestation. Rain-forests are home to about 80% of the world’s plants and animals, and the people who live there (indigenous people) need the rain-forest for their food and home. Forests also make \$75-100 billion for the economy every year.",
        answers: [
          AnswerModel(answer: "Harming the economy"),
          AnswerModel(answer: "Loss of wildlife"),
          AnswerModel(answer: "Harming Indigenous people"),
          AnswerModel(answer: "None of the mentioned", isCorrect: true),
        ],
      ),
      // 4
      QuestionModel(
        question: "Which of the following are causes of deforestation?",
        explanation: "There are a lot of reasons for deforestation, but the two main reasons for deforestation are timber and food production. Other reasons include mining, oil extraction, road building, and urban expansion.",
        answers: [
          AnswerModel(answer: "Mining"),
          AnswerModel(answer: "Oil extraction"),
          AnswerModel(answer: "Urban expansion"),
          AnswerModel(answer: "All of the mentioned", isCorrect: true),
        ],
      ),
      // 5
      QuestionModel(
        question: "How many trees are needed to supply a day's worth of oxygen to 4 people?",
        explanation: "Mathematical calculations have proven that for every 4 people’s oxygen supply, 1 tree is needed, making the ratio 1:4.",
        answers: [
          AnswerModel(answer: "1", isCorrect: true),
          AnswerModel(answer: "10"),
          AnswerModel(answer: "50"),
          AnswerModel(answer: "100"),
        ],
      ),
    ],
  ),

  // ----------------------------------------------------------------------------------------------- FAST FASHION
  QuizModel(
    quizName: "FAST FASHION",
    imageUrl: "lib/assets/image/first_fashion.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "What is the worth of the fast fashion industry?",
        explanation: "According to estimations and calculations, and moreover reports by many organizations prove that the fast fashion industry is worth around 1 trillion dollars.",
        answers: [
          AnswerModel(answer: "1 trillion dollars", isCorrect: true),
          AnswerModel(answer: "5 trillion dollars"),
          AnswerModel(answer: "10 billion dollars"),
          AnswerModel(answer: "500 million dollars"),
        ],
      ),
      // 2
      QuestionModel(
        question: "Usage of what material in the fast fashion industry causes the most harm?",
        explanation: "When taken to landfill sites, polyester contains harmful toxins that can leach into the soil and contaminate the water.",
        answers: [
          AnswerModel(answer: "Cotton"),
          AnswerModel(answer: "Silk"),
          AnswerModel(answer: "Polyester", isCorrect: true),
          AnswerModel(answer: "Nylon"),
        ],
      ),
      // 3
      QuestionModel(
        question: "Wearing your clothes helps to cut what?",
        explanation: "If you wear your clothes more, it means that the tendency to buy new clothes will decrease, hence cutting carbon emissions.",
        answers: [
          AnswerModel(answer: "Carbon emission", isCorrect: true),
          AnswerModel(answer: "Deforestation"),
          AnswerModel(answer: "Microplastics"),
          AnswerModel(answer: "All of the mentioned"),
        ],
      ),
      // 4
      QuestionModel(
        question: "The fast fashion industry is accountable for what amount of the world's total carbon emission?",
        explanation: "Reports show that the textiles and clothing industry contributes to 10% of the world's total carbon emission.",
        answers: [
          AnswerModel(answer: "5%"),
          AnswerModel(answer: "10%", isCorrect: true),
          AnswerModel(answer: "50%"),
          AnswerModel(answer: "90%"),
        ],
      ),
      // 5
      QuestionModel(
        question: "What is the most sustainable fabric?",
        explanation: "Linen is biodegradable and grows without synthetic aid, making it the most sustainable fabric.",
        answers: [
          AnswerModel(answer: "Cotton"),
          AnswerModel(answer: "Nylon"),
          AnswerModel(answer: "Linen", isCorrect: true),
          AnswerModel(answer: "Gold"),
        ],
      ),
    ],
  ),

  // ----------------------------------------------------------------------------------------------- RECYCLING
  QuizModel(
    quizName: "RECYCLING",
    imageUrl: "lib/assets/image/recycling.jpeg",
    questions: [
      // 1
      QuestionModel(
        question: "How much garbage does one person make in a day on average?",
        explanation: "The average person tosses out 4 pounds of trash every day. Multiply that by 7 billion, and that’s a lot of trash per day!",
        answers: [
          AnswerModel(answer: "1 pound"),
          AnswerModel(answer: "10 pounds"),
          AnswerModel(answer: "4 pounds", isCorrect: true),
          AnswerModel(answer: "100 pounds"),
        ],
      ),
      // 2
      QuestionModel(
        question: "What is recycling?",
        explanation: "Recycling is one of the best ways to reduce the amount of trash you throw away. You can recycle plastic, glass, paper, metal, and more! When you recycle, the materials get reused to make another product, whether that be a notebook, napkins, or water bottles.",
        answers: [
          AnswerModel(answer: "Burning garbage materials"),
          AnswerModel(answer: "Burying garbage materials"),
          AnswerModel(answer: "Reusing garbage materials", isCorrect: true),
          AnswerModel(answer: "Throwing garbage materials"),
        ],
      ),
      // 3
      QuestionModel(
        question: "Out of our total trash, how much can be recycled?",
        explanation: "Out of our total trash produced, 75% is recyclable. Saving these can reduce the amount of trash going to landfills and dumps.",
        answers: [
          AnswerModel(answer: "5%"),
          AnswerModel(answer: "25%"),
          AnswerModel(answer: "50%"),
          AnswerModel(answer: "75%", isCorrect: true),
        ],
      ),
      // 4
      QuestionModel(
        question: "Recycling helps to protect what?",
        explanation: "Recycling can help to save the earth, and a major reason for this is that it reduces the need for extracting raw materials, all of which link to climate change.",
        answers: [
          AnswerModel(answer: "Cars"),
          AnswerModel(answer: "The Earth", isCorrect: true),
          AnswerModel(answer: "Jobs"),
          AnswerModel(answer: "Animals"),
        ],
      ),
      // 5
      QuestionModel(
        question: "What type of useful metals can we find in recycled electronic waste?",
        explanation: "You can recycle metal! Lots of useful metals, like gold, silver, or copper, can be found in electronics. So instead of throwing away a broken electronic, take it to a recycling centre instead!",
        answers: [
          AnswerModel(answer: "Gold"),
          AnswerModel(answer: "Silver"),
          AnswerModel(answer: "Copper"),
          AnswerModel(answer: "All of the mentioned", isCorrect: true),
        ],
      ),
    ],
  ),
];
