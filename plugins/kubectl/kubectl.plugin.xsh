def _kca(args):
    kubectl @(args) --all-namespaces


def _kres(args):
    echo kubectl set env @(args) REFRESHED_AT $(date +%Y%m%d%H%M%S)

# Execute a kubectl command against all namespaces
aliases["kca"] = _kca
aliases["kres"] = _kres

omx_kube_aliases = {
    # This command is used a LOT both below and in daily life
    "k": 'kubectl',

    # Apply a YML file
    "kaf": 'kubectl apply -f',

    # Drop into an interactive terminal on a container
    "keti": 'kubectl exec -t -i',

    # Manage configuration quickly to switch contexts between local, dev ad staging.
    "kcuc": 'kubectl config use-context',
    "kcsc": 'kubectl config set-context',
    "kcdc": 'kubectl config delete-context',
    "kccc": 'kubectl config current-context',

    # List all contexts
    "kcgc": 'kubectl config get-contexts',

    #General aliases
    "kdel": 'kubectl delete',
    "kdelf": 'kubectl delete -f',

    # Pod management.
    "kgp": 'kubectl get pods',
    "kgpa": 'kubectl get pods --all-namespaces',
    "kgpw": 'kgp --watch',
    "kgpwide": 'kgp -o wide',
    "kep": 'kubectl edit pods',
    "kdp": 'kubectl describe pods',
    "kdelp": 'kubectl delete pods',
    "kgpall": 'kubectl get pods --all-namespaces -o wide',

    # get pod by label: kgpl "app=myapp" -n myns
    "kgpl": 'kgp -l',

    # get pod by namespace: kgpn kube-system"
    "kgpn": 'kgp -n',

    # Service management.
    "kgs": 'kubectl get svc',
    "kgsa": 'kubectl get svc --all-namespaces',
    "kgsw": 'kgs --watch',
    "kgswide": 'kgs -o wide',
    "kes": 'kubectl edit svc',
    "kds": 'kubectl describe svc',
    "kdels": 'kubectl delete svc',

    # Ingress management
    "kgi": 'kubectl get ingress',
    "kgia": 'kubectl get ingress --all-namespaces',
    "kei": 'kubectl edit ingress',
    "kdi": 'kubectl describe ingress',
    "kdeli": 'kubectl delete ingress',

    # Namespace management
    "kgns": 'kubectl get namespaces',
    "kens": 'kubectl edit namespace',
    "kdns": 'kubectl describe namespace',
    "kdelns": 'kubectl delete namespace',
    "kcn": 'kubectl config set-context --current --namespace',

    # ConfigMap management
    "kgcm": 'kubectl get configmaps',
    "kgcma": 'kubectl get configmaps --all-namespaces',
    "kecm": 'kubectl edit configmap',
    "kdcm": 'kubectl describe configmap',
    "kdelcm": 'kubectl delete configmap',

    # Secret management
    "kgsec": 'kubectl get secret',
    "kgseca": 'kubectl get secret --all-namespaces',
    "kdsec": 'kubectl describe secret',
    "kdelsec": 'kubectl delete secret',

    # Deployment management.
    "kgd": 'kubectl get deployment',
    "kgda": 'kubectl get deployment --all-namespaces',
    "kgdw": 'kgd --watch',
    "kgdwide": 'kgd -o wide',
    "ked": 'kubectl edit deployment',
    "kdd": 'kubectl describe deployment',
    "kdeld": 'kubectl delete deployment',
    "ksd": 'kubectl scale deployment',
    "krsd": 'kubectl rollout status deployment',

    # Rollout management.
    "kgrs": 'kubectl get replicaset',
    "kdrs": 'kubectl describe replicaset',
    "kers": 'kubectl edit replicaset',
    "krh": 'kubectl rollout history',
    "kru": 'kubectl rollout undo',

    # Statefulset management.
    "kgss": 'kubectl get statefulset',
    "kgssa": 'kubectl get statefulset --all-namespaces',
    "kgssw": 'kgss --watch',
    "kgsswide": 'kgss -o wide',
    "kess": 'kubectl edit statefulset',
    "kdss": 'kubectl describe statefulset',
    "kdelss": 'kubectl delete statefulset',
    "ksss": 'kubectl scale statefulset',
    "krsss": 'kubectl rollout status statefulset',

    # Port forwarding
    "kpf": "kubectl port-forward",

    # Tools for accessing all information
    "kga": 'kubectl get all',
    "kgaa": 'kubectl get all --all-namespaces',

    # Logs
    "kl": 'kubectl logs',
    "kl1h": 'kubectl logs --since 1h',
    "kl1m": 'kubectl logs --since 1m',
    "kl1s": 'kubectl logs --since 1s',
    "klf": 'kubectl logs -f',
    "klf1h": 'kubectl logs --since 1h -f',
    "klf1m": 'kubectl logs --since 1m -f',
    "klf1s": 'kubectl logs --since 1s -f',

    # File copy
    "kcp": 'kubectl cp',

    # Node Management
    "kgno": 'kubectl get nodes',
    "keno": 'kubectl edit node',
    "kdno": 'kubectl describe node',
    "kdelno": 'kubectl delete node',

    # PVC management.
    "kgpvc": 'kubectl get pvc',
    "kgpvca": 'kubectl get pvc --all-namespaces',
    "kgpvcw": 'kgpvc --watch',
    "kepvc": 'kubectl edit pvc',
    "kdpvc": 'kubectl describe pvc',
    "kdelpvc": 'kubectl delete pvc',

    # Service account management.
    "kdsa": "kubectl describe sa",
    "kdelsa": "kubectl delete sa",

    # DaemonSet management.
    "kgds": 'kubectl get daemonset',
    "kgdsw": 'kgds --watch',
    "keds": 'kubectl edit daemonset',
    "kdds": 'kubectl describe daemonset',
    "kdelds": 'kubectl delete daemonset',

    # CronJob management.
    "kgcj": 'kubectl get cronjob',
    "kecj": 'kubectl edit cronjob',
    "kdcj": 'kubectl describe cronjob',
    "kdelcj": 'kubectl delete cronjob',

    # Job management.
    "kgj": 'kubectl get job',
    "kej": 'kubectl edit job',
    "kdj": 'kubectl describe job',
    "kdelj": 'kubectl delete job',
}
aliases.update(omx_kube_aliases)
