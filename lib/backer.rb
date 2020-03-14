require 'pry'
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_instances = ProjectBacker.all.select {|proj_backer| proj_backer.backer == self}
        backer_instances.map(&:project)
    end
    
end