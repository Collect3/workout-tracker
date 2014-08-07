# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Equipment
Equipment.create :name => 'Body Only'
Equipment.create :name => 'Machine'
Equipment.create :name => 'Foam Roll'
Equipment.create :name => 'Dumbbell'
Equipment.create :name => 'Other'
Equipment.create :name => 'Medicine Ball'
Equipment.create :name => 'Bands'
Equipment.create :name => 'Barbell'
Equipment.create :name => 'Cable'
Equipment.create :name => 'Exercise Ball'
Equipment.create :name => 'E-Z Curl Bar'
Equipment.create :name => 'Kettlebells'

#Exercise Type
ExerciseType.create :name => 'Strength'
ExerciseType.create :name => 'Stretching'
ExerciseType.create :name => 'Plyometrics'
ExerciseType.create :name => 'Strongman'
ExerciseType.create :name => 'Powerlifting'
ExerciseType.create :name => 'Cardio'
ExerciseType.create :name => 'Olympic Weightlifting'

#Level
Level.create :name => 'Beginner'
Level.create :name => 'Intermediate'
Level.create :name => 'Expert'

#Metric Type
MetricType.create :name => 'duration_time', :data_type => 'float'
MetricType.create :name => 'weight', :data_type => 'float'
MetricType.create :name => 'reps', :data_type => 'int'


#Muscle
Muscle.create :name => 'Abdominals'
Muscle.create :name => 'Hamstrings'
Muscle.create :name => 'Abductors'
Muscle.create :name => 'Quadriceps'
Muscle.create :name => 'Biceps'
Muscle.create :name => 'Shoulders'
Muscle.create :name => 'Chest'
Muscle.create :name => 'Calves'
Muscle.create :name => 'Glutes'
Muscle.create :name => 'Triceps'
Muscle.create :name => 'Traps'
Muscle.create :name => 'Forearms'
Muscle.create :name => 'Lats'
Muscle.create :name => 'Neck'
Muscle.create :name => 'Lower Back'
Muscle.create :name => 'Middle Back'

#Mechanics Type
MechanicsType.create :name => 'N/A'
MechanicsType.create :name => 'Compound'
MechanicsType.create :name => 'Isolation'

#Force Type
ForceType.create :name => 'Pull'
ForceType.create :name => 'Pull Stretch Type: Other'
ForceType.create :name => 'Pull Stretch Type: General'
ForceType.create :name => 'Push'
ForceType.create :name => 'Push Stretch Type: Other'
ForceType.create :name => 'Push Stretch Type: General'
ForceType.create :name => 'Static'
ForceType.create :name => 'Static Stretch Type: Other'
ForceType.create :name => 'Static Stretch Type: General'
ForceType.create :name => 'N/A'

#Intensity
Intensity.create :name => 'Light', :description => 'Does not induce sweating unless it\'s a hot, humid day. There is no noticeable change in breathing patterns.'
Intensity.create :name => 'Moderate', :description => 'Will break a sweat after performing the activity for about 10 minutes. Breathing becomes deeper and more frequent. You can carry on a conversation but not sing.'
Intensity.create :name => 'High', :description => 'Will break a sweat after 3-5 minutes. Breathing is deep and rapid. You can only talk in short phrases.'