ActiveAdmin.register Task do
	permit_params :title, :note, :video, :header, :tag, :project_id

	sortable tree: false,
						sorting_attribute: :tag

	index :as => :sortable do
		label :title

		actions
	end

	index do
		selectable_column
		column :header
		column :title
		column :tag
		column :project

		actions
	end

	form do |f|
		f.inputs do
			input :project, label: "Project"
			input :title, label: "Title"
			input :note, label: "Note"
			input :video, label: "video"
			input :header, label: "Header"
		end

		actions
	end

end
