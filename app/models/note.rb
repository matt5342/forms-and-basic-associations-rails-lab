class Note < ActiveRecord::Base
  # add associations here
  belongs_to :song

  def note_ids=(ids)
    ids.each do |id|
      note = Note.find(id)
      self.notes << note
    end
  end
end
