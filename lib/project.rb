class Project 
    attr_reader :title
     def initialize(title)
        @title = title 
     end 
    
     def add_backer(backer)
        ProjectBacker.new(self  , backer)
     end
    
    def backers
        pros =  ProjectBacker.all.select do |pro|
             pro.project == self
       end
       pros.map do |pros| 
         pros.backer
       end 
        
    end
end 