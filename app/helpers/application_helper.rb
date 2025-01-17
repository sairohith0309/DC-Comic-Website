module ApplicationHelper
  BOOTSTRAP_ALERT_CLASS = {
    'success' => 'alert-success',
    'error'   => 'alert-danger',
    'notice'  => 'alert-info',
    'alert'   => 'alert-danger',
    'warn'    => 'alert-warning'
  }.freeze

  def alert_class(flash_key)
    BOOTSTRAP_ALERT_CLASS[flash_key]
  end

  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end
end

def active_class(path)
  if request.path == path
    return 'active'
  else
    return ''
  end
end