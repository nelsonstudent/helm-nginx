▶️ Para executar:
1. Torne o script executável:

chmod +x reset-ingress-nginx.sh

2. Execute:

./reset-ingress-nginx.sh

🔎 Após a instalação, valide com:

kubectl get pods -n ingress-nginx
kubectl get svc -n ingress-nginx
kubectl get ingressclass
kubectl get validatingwebhookconfiguration ingress-nginx-admission

Se tudo estiver com STATUS = Running e os recursos criados corretamente, está pronto para uso.
