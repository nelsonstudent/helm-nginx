# Reset e Validação do Ingress NGINX

## 1. Torne o script executável

```bash
chmod +x reset-ingress-nginx.sh
```

## 2. Execute o script

```bash
./reset-ingress-nginx.sh
```

## 3. Valide a instalação

Após a execução, verifique os recursos criados:

```bash
kubectl get pods -n ingress-nginx
kubectl get svc -n ingress-nginx
kubectl get ingressclass
kubectl get validatingwebhookconfiguration ingress-nginx-admission
```

## 4. Confirmação

Se todos os pods estiverem com `STATUS = Running` e os recursos forem exibidos corretamente, o Ingress NGINX está pronto para uso.
