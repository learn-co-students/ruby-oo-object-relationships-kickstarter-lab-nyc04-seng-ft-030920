class Backer
attr_reader :name


    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        my_pbs = ProjectBacker.all.select {|pb| pb.backer == self}
        my_pbs.map(&:project)
    end

end