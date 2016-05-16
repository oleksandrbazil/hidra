module WorksHelper
  def current_status
    "ololo"
  end

  def self.work_statuses_select
    names = []
    statuses.keys.each do |status|
      names << [I18n.t("project.display_status.#{status}"), status]
    end
    names
  end
end
