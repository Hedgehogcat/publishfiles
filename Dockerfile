FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime

# �������Ⱪ¶�Ķ˿ڣ������ 8090 ��������Ķ˿�һ��
# EXPOSE 8090
# ָ������Ŀ¼
WORKDIR /app
# ����ǰĿ¼�������ļ����Ƶ�����Ŀ¼��ע�� . . �м����пո��
COPY . .
# ���û��������������ö������urls...
  ENV ASPNETCORE_ENVIRONMENT Development
  ENV ASPNETCORE_URLS=http://+:9090
# �����������
ENTRYPOINT ["dotnet", "WebApiDemo.dll"]