module NotesHelper
  def update_info(note)
    info = ""
    if note.created_at.strftime(t('date_format')) != note.updated_at.strftime(t('date_format'))
      info += note.updated_at.strftime(t('time_format')) + t('update')
    end
    info
  end

  def link_to_note(note)
    if note.title.to_s==''
      link_to t('s_note', w: note.created_at.strftime(t'date_format')), note
    else
      link_to note.title, note
    end
  end

  def link_to_user_note(note)
    if note.title.to_s==''
      link_to t('s_note', w: note.created_at.strftime(t'date_format')), site(note.user) + note_path(note)
    else
      link_to note.title, site(note.user) + note_path(note)
    end
  end

end