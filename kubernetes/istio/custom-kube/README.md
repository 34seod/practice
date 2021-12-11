# Settings
```bash
$ kubectl apply -f ./config
$ kubectl apply -f ./addons
$ kubectl apply -f ./bookinfo -n bookinfo # https://istio.io/latest/docs/examples/bookinfo/
$ kubectl apply -f ./truck
```

# Ports
- Kiali:   31000
- Jaeger:  31001
- Grafana: 31002

# TODO
- addons 하나씩 설치해서 연결성 확인
- extras 확인
- Prometheus / Jaeger 데이터 저장(S3?) 및 불러오기
- Helm 이용해서 개발 / 프로덕션 환경 구분
