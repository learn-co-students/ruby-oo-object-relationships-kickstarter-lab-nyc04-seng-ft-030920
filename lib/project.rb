class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_instance = ProjectBacker.all.select {|proj_backer| proj_backer.project == self}
        project_instance.map(&:backer)
    end

end