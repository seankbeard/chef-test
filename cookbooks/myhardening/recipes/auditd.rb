#Change Auditd Logs to Keep
execute "Set auditd logs to keep" do
    command "sed -i '/max_log_file_action/ s/ROTATE/keep_logs/' /etc/audit/auditd.conf"
  end

#Restart Auditd Service
service 'auditd' do
    action :restart
  end