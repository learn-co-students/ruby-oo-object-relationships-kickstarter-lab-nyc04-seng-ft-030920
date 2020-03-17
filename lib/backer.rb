class Backer 
attr_reader :name
 def initialize(name)
    @name = name 
 end 

 def back_project(project)
   ProjectBacker.new(project , self)
 end
 def backed_projects
   proj =  ProjectBacker.all.select do |pro|
        pro.backer == self
  end
  proj.map do |pros| 
    pros.project
  end 
   
 end
end 