# db/seeds.rb
questions = [
  "How satisfied are you with the design of iPhone 13?",
  "Rate your overall experience with the camera of iPhone 13.",
  "How would you rate the performance of iPhone 13?",
  "Rate the battery life of iPhone 13.",
  "How satisfied are you with the display quality of iPhone 13?",
  "Rate your experience with the iOS operating system on iPhone 13.",
  "How likely are you to recommend iPhone 13 to a friend or colleague?",
  "Rate your satisfaction with the durability and build quality of iPhone 13."
]

questions.each do |content|
  Question.create(content: content)
end
