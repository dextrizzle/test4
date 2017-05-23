class PetWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform()
    puts "worker doin a pet thing"
    pet = Pet.last

    hunger = pet.read_attribute(:hunger)
    thirst = pet.read_attribute(:thirst)
    sickness = pet.read_attribute(:sickness)
    toilet = pet.read_attribute(:toilet)
    happyness = pet.read_attribute(:happyness)
    sleep = pet.read_attribute(:sleep)

    if hunger > 0
      pet.update_attribute(:hunger, hunger-1)
    end
    if thirst > 0
      pet.update_attribute(:thirst, thirst-1)
    end
    if sickness > 0
      pet.update_attribute(:sickness, sickness-1)
    end
    if toilet > 0
      pet.update_attribute(:toilet, toilet-1)
    end
    if happyness > 0
      pet.update_attribute(:happyness, happyness-1)
    end
    if sleep > 0
      pet.update_attribute(:sleep, sleep-1)
    end

  end
  Sidekiq::Cron::Job.create(name: 'Pet Worker - every 5min', cron: '*/5 * * * *', class: 'PetWorker')
end