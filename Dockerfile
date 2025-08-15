FROM openvpn/openvpn-as

# 設定環境變數
ENV OPENVPN_AS_NAME="openvpn-as"
# ENV OPENVPN_DATA_PATH="/usr/local/openvpn_as/etc/db"
ENV OPENVPN_DATA_PATH="/openvpn"

# 建立資料目錄 (如果不存在)
RUN mkdir -p "$OPENVPN_DATA_PATH"

# 聲明需要暴露的端口
EXPOSE 943 443 1194

# 複製啟動腳本
COPY start.sh /start.sh

# 設定啟動腳本權限
RUN chmod +x /start.sh

# 覆蓋預設的啟動指令
CMD ["/start.sh"]
