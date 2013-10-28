namespace :school_data do
  desc 'updating school data'
  task school: :environment do
    debugger
    @schools = School.where('city LIKE " %"')
      @schools.each do |school|  
        school.update_attributes(:city => school.city.lstrip)
       end  
    end
end
