FROM openvpn/openvpn-as

# 設定環境變數
ENV OPENVPN_AS_NAME="openvpn-as"
# ENV OPENVPN_DATA_PATH="/usr/local/openvpn_as/etc/db"
ENV OPENVPN_DATA_PATH="/openvpn"

# 建立資料目錄 (如果不存在)
RUN mkdir -p "$OPENVPN_DATA_PATH"

# 聲明需要暴露的端口
EXPOSE 943 443 1194
