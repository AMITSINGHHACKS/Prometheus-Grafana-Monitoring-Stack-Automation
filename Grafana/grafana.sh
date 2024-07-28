sudo wget https://dl.grafana.com/enterprise/release/grafana-enterprise-11.1.3.linux-amd64.tar.gz -O grafana.tar.gz
sudo tar -xvf grafana.tar.gz
EXTRACTED_DIR=$(tar -tzf grafana.tar.gz | head -1 | cut -f1 -d"/")
sudo mv $EXTRACTED_DIR grafana
sudo rm grafana.tar.gz
cd grafana
./bin/grafana-server &
echo "grafana has been downloaded and extracted to the 'grafana' directory."