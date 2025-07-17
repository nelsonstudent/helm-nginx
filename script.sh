#!/bin/bash

echo "🧹 Limpando recursos antigos do ingress-nginx..."

# Deletar recursos órfãos
kubectl delete validatingwebhookconfiguration ingress-nginx-admission --ignore-not-found
kubectl delete clusterrole ingress-nginx --ignore-not-found
kubectl delete clusterrolebinding ingress-nginx --ignore-not-found
kubectl delete ingressclass nginx --ignore-not-found
kubectl delete namespace ingress-nginx --ignore-not-found

echo "⏳ Aguardando recursos serem removidos..."
sleep 10

echo "📥 Adicionando repositório do Helm (caso ainda não tenha)"
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

echo "🚀 Instalando ingress-nginx via Helm..."
helm install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace

echo "✅ Instalação concluída!"
