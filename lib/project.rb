class Project
attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        proj_pbs = ProjectBacker.all.select {|pb| pb.project == self} 
        proj_pbs.map(&:backer)
    end
end