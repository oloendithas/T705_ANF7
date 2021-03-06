.class public Lcom/absolute/android/persistservice/ABTPersistenceService;
.super Lcom/absolute/android/persistence/IABTPersistence$Stub;
.source "SourceFile"


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x2

.field private static final C:Z = true

.field private static D:Ljava/lang/String; = null

.field private static E:Ljava/lang/String; = null

.field protected static final a:I = 0x1

.field protected static final b:Ljava/lang/String; = "abt-persistence-settings"

.field protected static final c:Ljava/lang/String; = "abt-persistence-apps"

.field protected static final d:Ljava/lang/String; = "abt-persistence-apps-to-install"

.field protected static final e:Ljava/lang/String; = "abt-persistence-apps-fallback"

.field protected static final f:Ljava/lang/String; = "750"

.field protected static final g:Ljava/lang/String; = "600"

.field protected static final h:Z = false

.field protected static final i:Z = true

.field protected static final j:I = 0x2000

.field protected static final k:Ljava/lang/String; = "SHA256"

.field static final synthetic m:Z

.field private static final n:I = 0xc2f

.field private static final o:Z = false

.field private static final p:Z = false

.field private static final q:Z = true

.field private static final r:Z = false

.field private static final s:I = 0x14

.field private static final t:I = 0x14

.field private static final u:I = 0x5

.field private static final v:Ljava/lang/String; = ".apk"

.field private static final w:Ljava/lang/String; = "abt-persistence-pm-lock"

.field private static final x:Ljava/lang/String; = "abt-persistence-wifi-lock"

.field private static final y:I = 0x14

.field private static final z:I = 0x14


# instance fields
.field private F:Lcom/absolute/android/persistservice/ac;

.field private G:Landroid/content/Context;

.field private H:Ljava/util/Hashtable;

.field private I:Lcom/absolute/android/persistservice/aa;

.field private J:Lcom/absolute/android/persistservice/p;

.field private K:Lcom/absolute/android/persistservice/p;

.field private L:Lcom/absolute/android/persistservice/p;

.field private M:Lcom/absolute/android/persistservice/n;

.field private N:Lcom/absolute/android/persistservice/n;

.field private O:Lcom/absolute/android/persistservice/n;

.field private P:Lcom/absolute/android/persistservice/m;

.field private Q:Lcom/absolute/android/persistservice/d;

.field private R:Lcom/absolute/android/persistservice/c;

.field private S:Ljava/util/HashSet;

.field private T:Lcom/absolute/android/persistservice/q;

.field private U:Ljava/util/Hashtable;

.field private V:Lcom/absolute/android/persistservice/l;

.field private W:Lcom/absolute/android/persistservice/k;

.field private X:Lcom/absolute/android/persistservice/ad;

.field l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    .line 152
    const-string v0, "/mnt/pia"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->D:Ljava/lang/String;

    .line 155
    const-string v0, "AbsoluteSoftware"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->E:Ljava/lang/String;

    return-void

    .line 66
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;-><init>()V

    .line 223
    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    .line 917
    iput-object p1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    .line 921
    new-instance v0, Lcom/absolute/android/persistservice/ad;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    .line 924
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/Hashtable;

    .line 925
    new-instance v0, Lcom/absolute/android/persistservice/aa;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string v2, "abt-persistence-service"

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/ad;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    .line 926
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/Hashtable;

    const-string v1, "abt-persistence-service"

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/aa;)V

    .line 931
    new-instance v0, Lcom/absolute/android/persistservice/ac;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v3, "abt-persistence-settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/ac;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    .line 932
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;Z)V

    .line 935
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ABTPersistenceService starting up - version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 938
    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    .line 940
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 941
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16c

    .line 944
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting build fingerprint to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/ac;->a(Ljava/lang/String;)V

    .line 966
    :cond_8b
    :goto_8b
    new-instance v0, Lcom/absolute/android/persistservice/p;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v3, "abt-persistence-apps"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/p;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    .line 967
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;Z)V

    .line 968
    new-instance v0, Lcom/absolute/android/persistservice/p;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v3, "abt-persistence-apps-to-install"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/p;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    .line 969
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;Z)V

    .line 970
    new-instance v0, Lcom/absolute/android/persistservice/p;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v3, "abt-persistence-apps-fallback"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/p;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/p;

    .line 971
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v1, v5}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;Z)V

    .line 973
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Ljava/util/Hashtable;

    .line 974
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Ljava/util/HashSet;

    .line 980
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Ljava/util/Hashtable;

    const-string v1, "3082020b30820174a00302010202044d26012f300d06092a864886f70d0101050500304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f667477617265301e170d3131303130363137353134335a170d3430313232393137353134335a304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f66747761726530819f300d06092a864886f70d010101050003818d00308189028181008624ba8f680f679b9b4ce208d42a655c82d25e10e40cee65c5e53b48b5d00d25e33a97931614dcd14933f426070b9f1f17dfd2edc970f5a9449ad481c51c5204b91b5220eebd9a41c56fc29f3437eb3995d1ef2ebd00fb23f48260f1ea95b96d41c208add6effa815237a84c630a3c8d99a4e4048467f7a7ed659ac33421effb0203010001300d06092a864886f70d0101050500038181005dc61981f6a1d1a373f88b0d5491324a122ad81241a3746a256029b60c09980ee698e9ea59afa2f15e0d0a912ef2a975820632d9b95cc469f749776b601399c77055f57e8f6cd7a373d8c79cb8472c1cc833867ca62e0257b2c00093156ec2909ea6d6e6a5f093876c8b21fda70d3bfe585a7b564a48ff72c73f4d25ffe8597b"

    const-string v2, "Absolute Software Android signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_Install"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 986
    new-instance v1, Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/n;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    .line 988
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_InvokeMethod"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 990
    new-instance v1, Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/n;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    .line 992
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_Download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 994
    new-instance v1, Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/n;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/n;

    .line 997
    new-instance v0, Lcom/absolute/android/persistservice/c;

    invoke-direct {v0, p0, v5}, Lcom/absolute/android/persistservice/c;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->R:Lcom/absolute/android/persistservice/c;

    .line 998
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->R:Lcom/absolute/android/persistservice/c;

    invoke-static {v0}, Lcom/absolute/android/persistservice/c;->a(Lcom/absolute/android/persistservice/c;)V

    .line 1001
    new-instance v0, Lcom/absolute/android/persistservice/m;

    invoke-direct {v0, p0, v5}, Lcom/absolute/android/persistservice/m;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->P:Lcom/absolute/android/persistservice/m;

    .line 1002
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->P:Lcom/absolute/android/persistservice/m;

    invoke-static {v0}, Lcom/absolute/android/persistservice/m;->a(Lcom/absolute/android/persistservice/m;)V

    .line 1006
    new-instance v0, Lcom/absolute/android/persistservice/d;

    invoke-direct {v0, p0, v5}, Lcom/absolute/android/persistservice/d;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Q:Lcom/absolute/android/persistservice/d;

    .line 1009
    new-instance v0, Lcom/absolute/android/persistservice/q;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/absolute/android/persistservice/q;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Lcom/absolute/android/persistservice/p;Lcom/absolute/android/persistservice/ad;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    .line 1015
    :try_start_14b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 750 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_163} :catch_1a7

    .line 1023
    :goto_163
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()V

    .line 1026
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ad;->a()V

    .line 1029
    return-void

    .line 953
    :cond_16c
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/ac;->b()Ljava/lang/String;

    move-result-object v1

    .line 955
    if-eqz v0, :cond_8b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 957
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Build fingerprint has changed since last boot.Now: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Initiating handling of firmware update."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/ac;->a(Ljava/lang/String;)V

    .line 962
    iput-boolean v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    goto/16 :goto_8b

    .line 1017
    :catch_1a7
    move-exception v0

    .line 1018
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set permission of persisted folder, got exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    goto :goto_163
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1841
    .line 1842
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1843
    :cond_e
    if-nez p1, :cond_1f

    .line 1844
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GetAppInfoRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1845
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v2, "doGetAppInfo() failed"

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1846
    throw v0

    .line 1849
    :cond_1f
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v4

    .line 1850
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->b(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v5

    .line 1855
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1858
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1859
    if-eqz v0, :cond_147

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 1864
    :try_start_3d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1865
    const/4 v2, 0x1

    const-string v3, "abt-persistence-pm-lock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4e} :catch_c5
    .catchall {:try_start_3d .. :try_end_4e} :catchall_178

    move-result-object v3

    .line 1866
    :try_start_4f
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1868
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1869
    const/4 v2, 0x1

    const-string v6, "abt-persistence-wifi-lock"

    invoke-virtual {v0, v2, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_63} :catch_17f
    .catchall {:try_start_4f .. :try_end_63} :catchall_17c

    move-result-object v2

    .line 1870
    :try_start_64
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1872
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->c(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getVersion()I

    move-result v6

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-static {v0, v4, v6, v7, v8}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1876
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Initiating GetAppInfo() request for package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1880
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->d(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-static {v5, v6, v0, v7, v8}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/aa;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_a2} :catch_186
    .catchall {:try_start_64 .. :try_end_a2} :catchall_117

    move-result-object v0

    .line 1883
    :try_start_a3
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 1884
    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, v1, v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_ae} :catch_18c
    .catchall {:try_start_a3 .. :try_end_ae} :catchall_117

    .line 1901
    :cond_ae
    if-eqz v3, :cond_b9

    .line 1902
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1903
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1906
    :cond_b9
    if-eqz v2, :cond_c4

    .line 1907
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 1908
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1928
    :cond_c4
    :goto_c4
    return-object v0

    .line 1887
    :catch_c5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1888
    :goto_cb
    :try_start_cb
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "doGetAppInfo for package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " got exception/throwable for URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1890
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1892
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v5

    if-eqz v5, :cond_10a

    .line 1893
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 1897
    :cond_10a
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->f(Lcom/absolute/android/persistservice/g;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 1898
    new-instance v0, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v0
    :try_end_117
    .catchall {:try_start_cb .. :try_end_117} :catchall_117

    .line 1901
    :catchall_117
    move-exception v0

    :goto_118
    if-eqz v3, :cond_123

    .line 1902
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 1903
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1906
    :cond_123
    if-eqz v2, :cond_12e

    .line 1907
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1908
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_12e
    throw v0

    .line 1901
    :cond_12f
    if-eqz v3, :cond_13a

    .line 1902
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 1903
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1906
    :cond_13a
    if-eqz v2, :cond_c4

    .line 1907
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 1908
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_c4

    .line 1916
    :cond_147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Download of APK for package: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1918
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-direct {v2, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    .line 1919
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/DownloadApkException;->c()V

    .line 1920
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v0

    if-eqz v0, :cond_171

    .line 1921
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 1923
    :cond_171
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->f(Lcom/absolute/android/persistservice/g;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 1924
    throw v2

    .line 1901
    :catchall_178
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_118

    :catchall_17c
    move-exception v0

    move-object v2, v1

    goto :goto_118

    .line 1887
    :catch_17f
    move-exception v0

    move-object v2, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_cb

    :catch_186
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_cb

    :catch_18c
    move-exception v1

    goto/16 :goto_cb

    :cond_18f
    move-object v0, v1

    goto/16 :goto_c4
.end method

.method private a(Lcom/absolute/android/persistservice/j;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .registers 21

    .prologue
    .line 2226
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v3

    .line 2227
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2232
    invoke-virtual/range {p3 .. p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v13

    .line 2233
    sget-boolean v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v1, :cond_19

    if-nez v13, :cond_19

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2234
    :cond_19
    if-nez v13, :cond_31

    .line 2236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to invoke  GetAppInfo HTTP request because there is no pending install Application Profile for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2239
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2243
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/p;->e(Ljava/lang/String;)I

    move-result v16

    .line 2244
    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v1

    move/from16 v0, v16

    if-lt v0, v1, :cond_66

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exceeded maximum number of update attempts ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") via GetAppInfo request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 2247
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2250
    :cond_66
    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v5

    .line 2253
    :try_start_6a
    new-instance v1, Lcom/absolute/android/persistservice/g;

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/absolute/android/persistservice/g;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v1

    .line 2262
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2263
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b4

    .line 2264
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed because the server response  to GetAppInfo does not contain a PackageName value for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_a3
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_6a .. :try_end_a3} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_a3} :catch_ec

    .line 2348
    :catch_a3
    move-exception v1

    .line 2350
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v2

    if-nez v2, :cond_b3

    .line 2351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;I)V

    .line 2353
    :cond_b3
    throw v1

    .line 2269
    :cond_b4
    :try_start_b4
    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_130

    .line 2270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "GetAppInfo failed because the server response  package name: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match the existing / expected one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_ec
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_b4 .. :try_end_ec} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_ec} :catch_ec

    .line 2354
    :catch_ec
    move-exception v1

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;I)V

    .line 2356
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GetAppInfoAndDownloadAPK for package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got exception/throwable for URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2361
    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v3

    .line 2277
    :cond_130
    :try_start_130
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppVersion()I

    move-result v9

    .line 2278
    if-nez v9, :cond_14c

    .line 2279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed because the server response  does not contain a valid VersionCode value for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2282
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2293
    :cond_14c
    invoke-virtual/range {p3 .. p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v2

    .line 2294
    if-eqz v2, :cond_19d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19d

    .line 2295
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2296
    move/from16 v0, p2

    if-ne v9, v0, :cond_19d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19d

    .line 2298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The version: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " of package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returned by GetAppInfo() query to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is already installed. No need to download the APK."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2346
    :goto_19c
    return-object p3

    .line 2306
    :cond_19d
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    .line 2307
    if-eqz v10, :cond_1a9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c5

    .line 2308
    :cond_1a9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the server response to GetAppInfo does not contain a DownloadUrl value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2311
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2313
    :cond_1c5
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v12

    .line 2314
    if-eqz v12, :cond_1d1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1ed

    .line 2315
    :cond_1d1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the server response to GetAppInfo does not contain a DigitalSignature value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2318
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2321
    :cond_1ed
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v11

    .line 2326
    invoke-virtual {v1, v13}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 2329
    new-instance v6, Lcom/absolute/android/persistservice/e;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-direct/range {v6 .. v15}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    .line 2341
    new-instance p3, Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-object/from16 v0, p3

    invoke-direct {v0, v1, v2, v12}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_212
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_130 .. :try_end_212} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_212} :catch_ec

    goto :goto_19c
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/aa;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    return-object v0
.end method

.method protected static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1081
    const-string v0, "1"

    const-string/jumbo v1, "ro.kernel.qemu"

    invoke-static {v1}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1085
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :goto_13
    return-object v0

    .line 1089
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 1981
    .line 1982
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1983
    :cond_e
    if-nez p1, :cond_1f

    .line 1984
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DownloadApkRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1985
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v2, "doDownloadApk() failed"

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1986
    throw v0

    .line 1989
    :cond_1f
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    .line 1990
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v1

    .line 1991
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    .line 1992
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->d(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    .line 1993
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->e(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v4

    .line 1997
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".apk"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2002
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 2005
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2006
    if-eqz v5, :cond_19d

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 2011
    :try_start_66
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 2012
    const/4 v8, 0x1

    const-string v9, "abt-persistence-pm-lock"

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_77} :catch_11d
    .catchall {:try_start_66 .. :try_end_77} :catchall_1ce

    move-result-object v11

    .line 2013
    :try_start_78
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2015
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 2016
    const/4 v8, 0x1

    const-string v9, "abt-persistence-wifi-lock"

    invoke-virtual {v5, v8, v9}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_8c} :catch_1d6
    .catchall {:try_start_78 .. :try_end_8c} :catchall_1d1

    move-result-object v10

    .line 2017
    :try_start_8d
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_a4} :catch_1db
    .catchall {:try_start_8d .. :try_end_a4} :catchall_1d3

    move-result-object v6

    .line 2020
    :try_start_a5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 2024
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 2027
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_c3

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_c3

    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v8

    if-nez v8, :cond_1ef

    .line 2028
    :cond_c3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2029
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_dd} :catch_1e1
    .catchall {:try_start_a5 .. :try_end_dd} :catchall_1d3

    move-object v12, v5

    move-object v5, v6

    move-object v6, v12

    .line 2032
    :goto_e0
    :try_start_e0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 2033
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2035
    :cond_e9
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 2038
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v6

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)I

    move-result v7

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-static/range {v0 .. v9}, Lcom/absolute/android/persistservice/x;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/aa;Landroid/content/Context;)V

    .line 2042
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 2043
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_106} :catch_1e7
    .catchall {:try_start_e0 .. :try_end_106} :catchall_1d3

    .line 2060
    :cond_106
    if-eqz v11, :cond_111

    .line 2061
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 2062
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2065
    :cond_111
    if-eqz v10, :cond_11c

    .line 2066
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2067
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2087
    :cond_11c
    :goto_11c
    return-object v5

    .line 2046
    :catch_11d
    move-exception v1

    move-object v3, v6

    move-object v5, v6

    .line 2047
    :goto_120
    :try_start_120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Download of APK for package: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " got exception for URL: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2049
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Exception: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v2

    if-eqz v2, :cond_160

    .line 2052
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v2, v4, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2056
    :cond_160
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->h(Lcom/absolute/android/persistservice/e;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 2057
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_16d
    .catchall {:try_start_120 .. :try_end_16d} :catchall_16d

    .line 2060
    :catchall_16d
    move-exception v0

    move-object v11, v3

    :goto_16f
    if-eqz v11, :cond_17a

    .line 2061
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 2062
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2065
    :cond_17a
    if-eqz v6, :cond_185

    .line 2066
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_185

    .line 2067
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_185
    throw v0

    .line 2060
    :cond_186
    if-eqz v3, :cond_191

    .line 2061
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_191

    .line 2062
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2065
    :cond_191
    if-eqz v6, :cond_11c

    .line 2066
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2067
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_11c

    .line 2075
    :cond_19d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download of APK for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2077
    new-instance v1, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-direct {v1, v0, v9}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    .line 2078
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->c()V

    .line 2079
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    if-eqz v0, :cond_1c7

    .line 2080
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v9, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2082
    :cond_1c7
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->h(Lcom/absolute/android/persistservice/e;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 2083
    throw v1

    .line 2060
    :catchall_1ce
    move-exception v0

    move-object v11, v6

    goto :goto_16f

    :catchall_1d1
    move-exception v0

    goto :goto_16f

    :catchall_1d3
    move-exception v0

    move-object v6, v10

    goto :goto_16f

    .line 2046
    :catch_1d6
    move-exception v1

    move-object v3, v11

    move-object v5, v6

    goto/16 :goto_120

    :catch_1db
    move-exception v1

    move-object v3, v11

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_120

    :catch_1e1
    move-exception v1

    move-object v3, v11

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_120

    :catch_1e7
    move-exception v1

    move-object v6, v10

    move-object v3, v11

    goto/16 :goto_120

    :cond_1ec
    move-object v5, v6

    goto/16 :goto_11c

    :cond_1ef
    move-object v12, v5

    move-object v5, v6

    move-object v6, v12

    goto/16 :goto_e0
.end method

.method private a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 1584
    .line 1586
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1589
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1590
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_7d

    .line 1599
    if-eqz v0, :cond_7c

    if-eq v0, p2, :cond_7c

    .line 1600
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installed version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match the version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified in the application profile.  The profile will be updated to match the version actually installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {p3, v0}, Lcom/absolute/android/persistence/AppProfile;->setVersion(I)V

    .line 1608
    const/4 v1, 0x0

    .line 1610
    :try_start_43
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1611
    invoke-static {p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4b} :catch_a1

    move-result-object v0

    .line 1612
    :try_start_4c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 1615
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to rename APK file from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". File.renameTo() returned false."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_7c} :catch_d0

    .line 1627
    :cond_7c
    :goto_7c
    return-object p4

    .line 1591
    :catch_7d
    move-exception v0

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got NameNotFoundException for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after successfully installing it. Can\'t get it\'s version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1595
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1596
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2

    :cond_9f
    move-object p4, v0

    .line 1624
    goto :goto_7c

    .line 1621
    :catch_a1
    move-exception v0

    .line 1622
    :goto_a2
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to rename APK file from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Got exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    goto :goto_7c

    .line 1621
    :catch_d0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_a2
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 13

    .prologue
    .line 1260
    if-eqz p3, :cond_8

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    .line 1261
    :cond_8
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to make a copy of the APK for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The ApkPath is null/empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 1340
    :cond_22
    :goto_22
    return-object p3

    .line 1266
    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-static {p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1269
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 1272
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1273
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1277
    :cond_3e
    if-nez p4, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_54

    move-object p3, v0

    .line 1282
    goto :goto_22

    .line 1286
    :cond_54
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1287
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1291
    :cond_5d
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    .line 1298
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_b3

    .line 1299
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Insufficient space available in persisted partition to make a copy of the APK in: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". File size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usable space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_95} :catch_96

    goto :goto_22

    .line 1334
    :catch_96
    move-exception v0

    .line 1335
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyApkToPersistentStorageArea() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1306
    :cond_b3
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1308
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1309
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1317
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 1319
    :goto_c4
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_cf

    .line 1320
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c4

    .line 1322
    :cond_cf
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1323
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1325
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1327
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 1328
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_e8} :catch_96

    :cond_e8
    move-object p3, v0

    .line 1331
    goto/16 :goto_22
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/absolute/android/persistservice/a;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/a;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1074
    return-void
.end method

.method private a(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 2171
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2172
    :cond_d
    if-eqz p1, :cond_4b

    .line 2173
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2176
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v1

    if-ne v1, v4, :cond_40

    .line 2177
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    .line 2178
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4c

    .line 2179
    :cond_25
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on install because the StartOnInstall intent specified in the App Profile is empty."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2191
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-ne v0, v4, :cond_4b

    .line 2195
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, p1, v4}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 2198
    :cond_4b
    return-void

    .line 2186
    :cond_4c
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/absolute/android/persistservice/a;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/a;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 66
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/MethodSpec;

    move-result-object v3

    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getMethodName()Ljava/lang/String;

    move-result-object v5

    :try_start_19
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getApkOrJarPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgValues()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/absolute/android/persistence/MethodReturnValue;

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getApkOrJarPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_50} :catch_e1

    if-eqz v4, :cond_57

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_54
    invoke-interface {v4, v3, v1, v0, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v0

    :try_start_59
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got exception invoking IABTResultReceiver.onInvokeResult() for successful invocation of method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_81} :catch_82

    goto :goto_57

    :catch_82
    move-exception v0

    :goto_83
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception in ABTPersistenceService doInvokeMethod for method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_57

    const/4 v2, 0x0

    :try_start_ae
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v1, v2, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b5} :catch_b6

    goto :goto_57

    :catch_b6
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onInvokeResult() for failed invocation of method: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    :catch_e1
    move-exception v0

    move-object v1, v2

    goto :goto_83
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 66
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v9

    :try_start_17
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Starting install of package: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_30} :catch_28d

    move-result-object v0

    const/4 v1, 0x0

    :try_start_32
    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_38} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_38} :catch_28d

    move v7, v0

    :goto_39
    :try_start_39
    monitor-enter p0
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3a} :catch_28d

    :try_start_3a
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/p;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v10

    if-nez v10, :cond_61

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Aborting install operation for package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as there is no longer a pending install entry."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    monitor-exit p0

    :cond_5d
    :goto_5d
    return-void

    :catch_5e
    move-exception v0

    move v7, v3

    goto :goto_39

    :cond_61
    invoke-virtual {v10}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;
    :try_end_6b
    .catchall {:try_start_3a .. :try_end_6b} :catchall_123

    :try_start_6b
    invoke-virtual {v10}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v8}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v11

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_291

    :try_start_76
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    if-eqz v4, :cond_12b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12b

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_12b

    move v6, v5

    :goto_8e
    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_94

    if-nez v6, :cond_29a

    :cond_94
    invoke-direct {p0, p1, v7, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/j;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    if-eqz v7, :cond_12e

    if-ne v7, v1, :cond_12e

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Target version: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " of application: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is already installed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    invoke-direct {p0, v8, v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_cf} :catch_d0

    goto :goto_5d

    :catch_d0
    move-exception v1

    move-object v3, v0

    :goto_d2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Install of package: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " failed with exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v9, :cond_f7

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_f0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v0, v4, v8, v6}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f7} :catch_202

    :cond_f7
    :goto_f7
    instance-of v0, v1, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v0, :cond_21f

    move-object v0, v1

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/DownloadApkException;->a()Z

    move-result v0

    if-ne v0, v5, :cond_21f

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The download and install of APK for package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " will not be re-tried as the exception was considered fatal."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    invoke-direct {p0, v8, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    goto/16 :goto_5d

    :catchall_123
    move-exception v0

    move-object v1, v2

    :goto_125
    :try_start_125
    monitor-exit p0

    throw v0
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_127} :catch_127

    :catch_127
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    goto :goto_d2

    :cond_12b
    move v6, v3

    goto/16 :goto_8e

    :cond_12e
    move v4, v1

    move v1, v5

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    :goto_133
    :try_start_133
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v6

    if-ne v6, v5, :cond_297

    invoke-direct {p0, v8, v4, v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_13c} :catch_1ce

    move-result-object v0

    move-object v1, v0

    :goto_13e
    :try_start_13e
    const-string v0, "SHA256"

    invoke-static {v0, v1}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_143} :catch_1d1

    move-result-object v0

    :goto_144
    if-eqz v7, :cond_14b

    :try_start_146
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v6, v8}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)V

    :cond_14b
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v8, v6, v4, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-direct {p0, v8, v4, v3, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-enter p0
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_158} :catch_1ce

    :try_start_158
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    if-ne v4, v5, :cond_1f7

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v8}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_17f

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17f

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_17f
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v8, v1, v0}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_184
    monitor-exit p0
    :try_end_185
    .catchall {:try_start_158 .. :try_end_185} :catchall_1ff

    :try_start_185
    invoke-direct {p0, v8, v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    invoke-direct {p0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Successfully installed package: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Version = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", persisted = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", monitored = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V

    goto/16 :goto_5d

    :catch_1ce
    move-exception v1

    goto/16 :goto_d2

    :catch_1d1
    move-exception v0

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to get Digest for APK: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", algorithm: , exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_185 .. :try_end_1f4} :catch_1ce

    move-object v0, v2

    goto/16 :goto_144

    :cond_1f7
    :try_start_1f7
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v1, v4}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fe
    .catchall {:try_start_1f7 .. :try_end_1fe} :catchall_1ff

    goto :goto_184

    :catchall_1ff
    move-exception v0

    :try_start_200
    monitor-exit p0

    throw v0
    :try_end_202
    .catch Ljava/lang/Throwable; {:try_start_200 .. :try_end_202} :catch_1ce

    :catch_202
    move-exception v0

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got exception invoking  IABTResultReceiver.onOperationResult() for failed install of package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f7

    :cond_21f
    instance-of v0, v1, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v0, :cond_5d

    check-cast v1, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v0

    if-ne v0, v5, :cond_25c

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download of APK for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be re-tried when connectivity is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_248
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Q:Lcom/absolute/android/persistservice/d;

    invoke-static {v0}, Lcom/absolute/android/persistservice/d;->a(Lcom/absolute/android/persistservice/d;)V

    monitor-exit v1
    :try_end_257
    .catchall {:try_start_248 .. :try_end_257} :catchall_259

    goto/16 :goto_5d

    :catchall_259
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25c
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling re-try of update/install of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    mul-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, v8, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_5d

    :catch_28d
    move-exception v1

    move-object v3, v2

    goto/16 :goto_d2

    :catchall_291
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_125

    :cond_297
    move-object v1, v0

    goto/16 :goto_13e

    :cond_29a
    move v12, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v12

    goto/16 :goto_133
.end method

.method private a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 2118
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    move v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadResult(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 2126
    :goto_12
    return-void

    .line 2120
    :catch_13
    move-exception v0

    .line 2121
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception invoking IABTDownloadReceiver.onDownloadResult() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method private a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1959
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;->onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 1966
    :goto_b
    return-void

    .line 1961
    :catch_c
    move-exception v0

    .line 1962
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception invoking IABTGetAppInfoReceiver.onGetAppInfoResult() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->b(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private a(Lcom/absolute/android/persistservice/h;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1727
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1728
    :cond_d
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/MethodSpec;

    move-result-object v3

    .line 1729
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v4

    .line 1732
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 1740
    :try_start_19
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1741
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getApkOrJarPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1743
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1745
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1746
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1747
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgValues()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1748
    new-instance v1, Lcom/absolute/android/persistence/MethodReturnValue;

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getApkOrJarPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_50} :catch_e1

    .line 1751
    if-eqz v4, :cond_57

    .line 1757
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_54
    invoke-interface {v4, v3, v1, v0, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_58

    .line 1783
    :cond_57
    :goto_57
    return-void

    .line 1758
    :catch_58
    move-exception v0

    .line 1759
    :try_start_59
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got exception invoking IABTResultReceiver.onInvokeResult() for successful invocation of method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_81} :catch_82

    goto :goto_57

    .line 1765
    :catch_82
    move-exception v0

    .line 1766
    :goto_83
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception in ABTPersistenceService doInvokeMethod for method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1769
    if-eqz v4, :cond_57

    .line 1775
    const/4 v2, 0x0

    :try_start_ae
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v1, v2, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b5} :catch_b6

    goto :goto_57

    .line 1776
    :catch_b6
    move-exception v0

    .line 1777
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onInvokeResult() for failed invocation of method: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1765
    :catch_e1
    move-exception v0

    move-object v1, v2

    goto :goto_83
.end method

.method private a(Lcom/absolute/android/persistservice/j;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1368
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1369
    :cond_f
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v8

    .line 1370
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v9

    .line 1381
    :try_start_17
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Starting install of package: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_30} :catch_28d

    move-result-object v0

    .line 1390
    const/4 v1, 0x0

    :try_start_32
    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1391
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_38} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_38} :catch_28d

    move v7, v0

    .line 1395
    :goto_39
    :try_start_39
    monitor-enter p0
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3a} :catch_28d

    .line 1396
    :try_start_3a
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/p;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v10

    .line 1397
    if-nez v10, :cond_61

    .line 1398
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Aborting install operation for package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as there is no longer a pending install entry."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 1400
    monitor-exit p0

    .line 1558
    :cond_5d
    :goto_5d
    return-void

    :catch_5e
    move-exception v0

    move v7, v3

    goto :goto_39

    .line 1405
    :cond_61
    invoke-virtual {v10}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;
    :try_end_6b
    .catchall {:try_start_3a .. :try_end_6b} :catchall_123

    .line 1406
    :try_start_6b
    invoke-virtual {v10}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 1407
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v8}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v11

    .line 1408
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_291

    .line 1413
    :try_start_76
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    .line 1414
    if-eqz v4, :cond_12b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12b

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_12b

    move v6, v5

    .line 1415
    :goto_8e
    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_94

    if-nez v6, :cond_29a

    .line 1423
    :cond_94
    invoke-direct {p0, p1, v7, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/j;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v1

    .line 1427
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 1428
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v3

    .line 1432
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    .line 1433
    if-eqz v7, :cond_12e

    if-ne v7, v1, :cond_12e

    .line 1435
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Target version: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " of application: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is already installed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1439
    invoke-direct {p0, v8, v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_cf} :catch_d0

    goto :goto_5d

    .line 1506
    :catch_d0
    move-exception v1

    move-object v3, v0

    .line 1507
    :goto_d2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Install of package: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " failed with exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1509
    if-eqz v9, :cond_f7

    .line 1516
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_f0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v0, v4, v8, v6}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f7} :catch_202

    .line 1525
    :cond_f7
    :goto_f7
    instance-of v0, v1, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v0, :cond_21f

    move-object v0, v1

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/DownloadApkException;->a()Z

    move-result v0

    if-ne v0, v5, :cond_21f

    .line 1526
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The download and install of APK for package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " will not be re-tried as the exception was considered fatal."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 1528
    invoke-direct {p0, v8, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    goto/16 :goto_5d

    .line 1408
    :catchall_123
    move-exception v0

    move-object v1, v2

    :goto_125
    :try_start_125
    monitor-exit p0

    throw v0
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_127} :catch_127

    .line 1506
    :catch_127
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    goto :goto_d2

    :cond_12b
    move v6, v3

    .line 1414
    goto/16 :goto_8e

    :cond_12e
    move v4, v1

    move v1, v5

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    .line 1445
    :goto_133
    :try_start_133
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v6

    if-ne v6, v5, :cond_297

    .line 1446
    invoke-direct {p0, v8, v4, v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_13c} :catch_1ce

    move-result-object v0

    move-object v1, v0

    .line 1450
    :goto_13e
    :try_start_13e
    const-string v0, "SHA256"

    invoke-static {v0, v1}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_143} :catch_1d1

    move-result-object v0

    .line 1460
    :goto_144
    if-eqz v7, :cond_14b

    .line 1461
    :try_start_146
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v6, v8}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)V

    .line 1464
    :cond_14b
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1467
    const/4 v7, 0x0

    invoke-direct {p0, v8, v6, v4, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1471
    invoke-direct {p0, v8, v4, v3, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1473
    monitor-enter p0
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_158} :catch_1ce

    .line 1475
    :try_start_158
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 1480
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    if-ne v4, v5, :cond_1f7

    .line 1481
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v8}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1482
    if-eqz v4, :cond_17f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_17f

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17f

    .line 1483
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1485
    :cond_17f
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v8, v1, v0}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :goto_184
    monitor-exit p0
    :try_end_185
    .catchall {:try_start_158 .. :try_end_185} :catchall_1ff

    .line 1494
    :try_start_185
    invoke-direct {p0, v8, v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1496
    invoke-direct {p0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Successfully installed package: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Version = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", persisted = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", monitored = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1504
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V

    goto/16 :goto_5d

    .line 1506
    :catch_1ce
    move-exception v1

    goto/16 :goto_d2

    .line 1454
    :catch_1d1
    move-exception v0

    .line 1455
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to get Digest for APK: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", algorithm: , exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_185 .. :try_end_1f4} :catch_1ce

    move-object v0, v2

    goto/16 :goto_144

    .line 1489
    :cond_1f7
    :try_start_1f7
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v1, v4}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fe
    .catchall {:try_start_1f7 .. :try_end_1fe} :catchall_1ff

    goto :goto_184

    .line 1491
    :catchall_1ff
    move-exception v0

    :try_start_200
    monitor-exit p0

    throw v0
    :try_end_202
    .catch Ljava/lang/Throwable; {:try_start_200 .. :try_end_202} :catch_1ce

    .line 1518
    :catch_202
    move-exception v0

    .line 1519
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got exception invoking  IABTResultReceiver.onOperationResult() for failed install of package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f7

    .line 1530
    :cond_21f
    instance-of v0, v1, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v0, :cond_5d

    .line 1531
    check-cast v1, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v0

    if-ne v0, v5, :cond_25c

    .line 1535
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download of APK for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be re-tried when connectivity is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1538
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Ljava/util/HashSet;

    monitor-enter v1

    .line 1539
    :try_start_248
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1540
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Q:Lcom/absolute/android/persistservice/d;

    invoke-static {v0}, Lcom/absolute/android/persistservice/d;->a(Lcom/absolute/android/persistservice/d;)V

    .line 1541
    monitor-exit v1
    :try_end_257
    .catchall {:try_start_248 .. :try_end_257} :catchall_259

    goto/16 :goto_5d

    :catchall_259
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1546
    :cond_25c
    if-eqz v3, :cond_5d

    .line 1547
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v0

    .line 1549
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling re-try of update/install of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1553
    mul-int/lit8 v0, v0, 0x3c

    invoke-direct {p0, v8, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_5d

    .line 1506
    :catch_28d
    move-exception v1

    move-object v3, v2

    goto/16 :goto_d2

    .line 1408
    :catchall_291
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_125

    :cond_297
    move-object v1, v0

    goto/16 :goto_13e

    :cond_29a
    move v12, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v12

    goto/16 :goto_133
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;I)V

    .line 2373
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 1237
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/absolute/android/persistservice/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1238
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1239
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1240
    monitor-exit p0

    return-void

    .line 1237
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 6

    .prologue
    .line 1208
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v0

    .line 1209
    and-int/lit8 v0, v0, -0x2

    .line 1210
    or-int/lit8 v0, v0, 0x2

    .line 1211
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, p1, v0}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;I)V

    .line 1213
    new-instance v0, Lcom/absolute/android/persistservice/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1214
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1215
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 1216
    monitor-exit p0

    return-void

    .line 1208
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    .registers 8

    .prologue
    .line 1185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v0

    .line 1186
    and-int/lit8 v0, v0, -0x3

    .line 1187
    and-int/lit8 v0, v0, -0x9

    .line 1188
    or-int/lit8 v0, v0, 0x1

    .line 1189
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, p1, v0}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;I)V

    .line 1191
    new-instance v0, Lcom/absolute/android/persistservice/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1192
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1193
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 1194
    monitor-exit p0

    return-void

    .line 1185
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 2402
    new-instance v1, Lcom/absolute/android/persistservice/l;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/l;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    .line 2406
    :try_start_a
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2408
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2409
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2410
    array-length v4, v3

    move v1, v0

    :goto_1a
    if-ge v1, v4, :cond_60

    aget-object v5, v3, v1

    .line 2411
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "installPackage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 2413
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invoking installPackage() for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/aa;->d(Ljava/lang/String;)V

    .line 2415
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    :cond_60
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    monitor-enter v1
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_63} :catch_fd
    .catchall {:try_start_a .. :try_end_63} :catchall_117

    .line 2422
    :goto_63
    :try_start_63
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    invoke-static {v2}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Z
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_fa

    move-result v2

    if-nez v2, :cond_126

    .line 2425
    :try_start_6b
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "waiting on installPackage() completion for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/aa;->d(Ljava/lang/String;)V

    .line 2427
    if-lez v0, :cond_11b

    .line 2429
    invoke-direct {p0, p1, p3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v9, :cond_b8

    .line 2430
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installPackage() timed out, but completed for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_b0} :catch_d7
    .catchall {:try_start_6b .. :try_end_b0} :catchall_fa

    .line 2432
    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_fa

    .line 2472
    iput-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    :goto_b3
    return-void

    .line 2410
    :cond_b4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1a

    .line 2434
    :cond_b8
    :try_start_b8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.installPackage() timed out for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d7
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_d7} :catch_d7
    .catchall {:try_start_b8 .. :try_end_d7} :catchall_fa

    .line 2443
    :catch_d7
    move-exception v0

    .line 2444
    :try_start_d8
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installPackage() for package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got interrupted exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2445
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invocation of PackageManager.installPackage() was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2465
    :catchall_fa
    move-exception v0

    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_d8 .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v0
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_fd} :catch_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_117

    .line 2466
    :catch_fd
    move-exception v0

    .line 2467
    :try_start_fe
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.installPackage() threw exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_117
    .catchall {:try_start_fe .. :try_end_117} :catchall_117

    .line 2472
    :catchall_117
    move-exception v0

    iput-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    throw v0

    .line 2440
    :cond_11b
    add-int/lit8 v0, v0, 0x1

    .line 2441
    :try_start_11d
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_124
    .catch Ljava/lang/InterruptedException; {:try_start_11d .. :try_end_124} :catch_d7
    .catchall {:try_start_11d .. :try_end_124} :catchall_fa

    goto/16 :goto_63

    .line 2449
    :cond_126
    :try_start_126
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    invoke-static {v0}, Lcom/absolute/android/persistservice/l;->b(Lcom/absolute/android/persistservice/l;)I

    move-result v0

    if-ne v0, v9, :cond_164

    .line 2450
    if-eqz p4, :cond_14b

    invoke-direct {p0, p1, p3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_14b

    .line 2454
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.installPackage() completed, but not for target version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2458
    :cond_14b
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installPackage() completed successfully for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->d(Ljava/lang/String;)V

    .line 2459
    monitor-exit v1
    :try_end_160
    .catchall {:try_start_126 .. :try_end_160} :catchall_fa

    .line 2472
    iput-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    goto/16 :goto_b3

    .line 2462
    :cond_164
    :try_start_164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invocation of PackageManager.installPackage() failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16c
    .catchall {:try_start_164 .. :try_end_16c} :catchall_fa
.end method

.method private declared-synchronized a(Z)V
    .registers 14

    .prologue
    .line 2669
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 2670
    if-eqz v3, :cond_e0

    .line 2672
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_e0

    aget-object v5, v3, v2

    .line 2673
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2674
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v0

    .line 2676
    invoke-direct {p0, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;I)Z

    move-result v7

    .line 2680
    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2d

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2681
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 2687
    :cond_2d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v6}, Lcom/absolute/android/persistservice/p;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_d7
    .catchall {:try_start_1 .. :try_end_32} :catchall_104

    move-result-object v8

    .line 2688
    const/4 v1, 0x0

    .line 2690
    :try_start_34
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_50

    invoke-virtual {v8}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_50

    .line 2691
    invoke-virtual {v8}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 2692
    const-string v0, "SHA256"

    invoke-static {v0, v1}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2696
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v9, v6, v1, v0}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_50} :catch_b2
    .catchall {:try_start_34 .. :try_end_50} :catchall_104

    .line 2704
    :cond_50
    :goto_50
    const/4 v0, 0x0

    .line 2705
    if-eqz v8, :cond_e2

    :try_start_53
    invoke-virtual {v8}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v1

    .line 2707
    :goto_57
    if-nez v7, :cond_89

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_89

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_89

    and-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_89

    .line 2711
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Persisted package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has been removed (possibly due to factory reset). Initiating recovery re-installation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2715
    invoke-direct {p0, v6, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2718
    :cond_89
    if-nez v0, :cond_e7

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_e7

    .line 2720
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Resuming installation of package: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2723
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_e5

    const/16 v0, 0x14

    .line 2724
    :goto_a9
    const/4 v1, 0x0

    invoke-direct {p0, v6, v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    .line 2672
    :cond_ad
    :goto_ad
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_c

    .line 2698
    :catch_b2
    move-exception v0

    .line 2699
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to get Digest for APK: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", algorithm: , exception : "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_d5} :catch_d7
    .catchall {:try_start_53 .. :try_end_d5} :catchall_104

    goto/16 :goto_50

    .line 2746
    :catch_d7
    move-exception v0

    .line 2747
    :try_start_d8
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string/jumbo v2, "recoverAndCompletePendingOperations() got exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e0
    .catchall {:try_start_d8 .. :try_end_e0} :catchall_104

    .line 2749
    :cond_e0
    monitor-exit p0

    return-void

    .line 2705
    :cond_e2
    const/4 v1, 0x0

    goto/16 :goto_57

    .line 2723
    :cond_e5
    const/4 v0, 0x0

    goto :goto_a9

    .line 2726
    :cond_e7
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_107

    .line 2728
    :try_start_eb
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Resuming uninstallation of package: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2731
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_103} :catch_d7
    .catchall {:try_start_eb .. :try_end_103} :catchall_104

    goto :goto_ad

    .line 2669
    :catchall_104
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2736
    :cond_107
    if-nez v7, :cond_ad

    :try_start_109
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2738
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Non-persisted package: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " has been removed (possibly due to factory reset). Cleaning up to remove AppProfile and APK."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2742
    invoke-direct {p0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_12c} :catch_d7
    .catchall {:try_start_109 .. :try_end_12c} :catchall_104

    goto :goto_ad
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 12

    .prologue
    const/16 v4, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2817
    .line 2825
    :try_start_4
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/p;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v2

    .line 2826
    if-eqz v2, :cond_f0

    .line 2827
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v5

    .line 2828
    if-eqz v5, :cond_fa

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_fa

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_20} :catch_e8

    move-result v3

    if-eqz v3, :cond_fa

    .line 2830
    :try_start_23
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA256"

    invoke-static {v3, v5}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_30} :catch_c2

    move-result v2

    if-eqz v2, :cond_a6

    .line 2833
    :try_start_33
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Recovering package "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " using local APK: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2835
    if-eqz p2, :cond_a4

    move v2, v4

    :goto_54
    invoke-direct {p0, p1, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_57} :catch_f7

    move v3, v0

    .line 2845
    :goto_58
    if-nez v3, :cond_f0

    .line 2847
    :try_start_5a
    monitor-enter p0
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5b} :catch_e8

    .line 2850
    :try_start_5b
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    if-nez v2, :cond_77

    .line 2851
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 2853
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2856
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;I)V

    .line 2858
    :cond_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_f2

    .line 2859
    if-eqz p2, :cond_f5

    move v2, v4

    .line 2861
    :goto_7b
    :try_start_7b
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovering package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds by querying server, since there is no local APK."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2865
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_a3} :catch_e8

    .line 2873
    :goto_a3
    return v0

    :cond_a4
    move v2, v1

    .line 2835
    goto :goto_54

    .line 2838
    :cond_a6
    :try_start_a6
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Digital signature of APK: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_c0} :catch_c2

    move v3, v1

    .line 2842
    goto :goto_58

    .line 2840
    :catch_c2
    move-exception v2

    move v3, v1

    .line 2841
    :goto_c4
    :try_start_c4
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to validate digital signature of APK: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_e6} :catch_e8

    goto/16 :goto_58

    .line 2869
    :catch_e8
    move-exception v0

    .line 2870
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v3, "initiateRecovery() got exception: "

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f0
    move v0, v1

    goto :goto_a3

    .line 2858
    :catchall_f2
    move-exception v0

    :try_start_f3
    monitor-exit p0

    throw v0
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_f5} :catch_e8

    :cond_f5
    move v2, v1

    .line 2859
    goto :goto_7b

    .line 2840
    :catch_f7
    move-exception v2

    move v3, v0

    goto :goto_c4

    :cond_fa
    move v3, v1

    goto/16 :goto_58
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/p;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V
    .registers 8

    .prologue
    .line 66
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    :try_start_14
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;I)V

    :cond_46
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_95

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_95

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete persisted file directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_95} :catch_ce

    :cond_95
    if-eqz v2, :cond_9d

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_9a
    invoke-interface {v2, v0, v3, v1, v4}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_b2

    :cond_9d
    :goto_9d
    :try_start_9d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully uninstalled package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    return-void

    :catch_b2
    move-exception v0

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got exception invoking  IABTResultReceiver.onOperationResult() for successful uninstall of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_cd} :catch_ce

    goto :goto_9d

    :catch_ce
    move-exception v0

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uninstall of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_b1

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_ed
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_f4} :catch_f5

    goto :goto_b1

    :catch_f5
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onOperationResult() for failed uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/absolute/android/persistservice/j;)V
    .registers 8

    .prologue
    .line 1637
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1638
    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    .line 1645
    :try_start_14
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v0

    .line 1660
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1661
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;I)V

    .line 1663
    :cond_46
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)V

    .line 1667
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_95

    .line 1668
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1673
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 1674
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete persisted file directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_95} :catch_ce

    .line 1681
    :cond_95
    if-eqz v2, :cond_9d

    .line 1687
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_9a
    invoke-interface {v2, v0, v3, v1, v4}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_b2

    .line 1696
    :cond_9d
    :goto_9d
    :try_start_9d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully uninstalled package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 1717
    :cond_b1
    :goto_b1
    return-void

    .line 1689
    :catch_b2
    move-exception v0

    .line 1690
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got exception invoking  IABTResultReceiver.onOperationResult() for successful uninstall of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_cd} :catch_ce

    goto :goto_9d

    .line 1699
    :catch_ce
    move-exception v0

    .line 1700
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uninstall of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1702
    if-eqz v2, :cond_b1

    .line 1708
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_ed
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_f4} :catch_f5

    goto :goto_b1

    .line 1710
    :catch_f5
    move-exception v0

    .line 1711
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onOperationResult() for failed uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;I)V

    .line 2382
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 7

    .prologue
    .line 2139
    monitor-enter p0

    .line 2140
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2141
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;I)V

    .line 2142
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;I)V

    .line 2143
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1c

    .line 2146
    if-eqz p2, :cond_1b

    .line 2152
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_18
    invoke-interface {p2, v0, v1, p1, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 2160
    :cond_1b
    :goto_1b
    return-void

    .line 2143
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2154
    :catch_1f
    move-exception v0

    .line 2155
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception invoking IABTResultReceiver.onOperationResult() for successful install of package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private declared-synchronized b(Z)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 2761
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 2762
    if-eqz v3, :cond_79

    .line 2764
    array-length v4, v3

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_79

    aget-object v0, v3, v2

    .line 2765
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2766
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v6, v5}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v6

    .line 2773
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6b

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v7

    if-lez v7, :cond_6b

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6b

    .line 2778
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;I)V

    .line 2788
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v7, v5}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 2789
    invoke-direct {p0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2790
    if-eqz p1, :cond_6f

    const/16 v0, 0x14

    .line 2792
    :goto_43
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Initiating install request for package: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 2795
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6b} :catch_71
    .catchall {:try_start_2 .. :try_end_6b} :catchall_7b

    .line 2764
    :cond_6b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_6f
    move v0, v1

    .line 2790
    goto :goto_43

    .line 2799
    :catch_71
    move-exception v0

    .line 2800
    :try_start_72
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v2, "handleFirmwareUpdate() got exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7b

    .line 2802
    :cond_79
    monitor-exit p0

    return-void

    .line 2761
    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->E:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2487
    const-string v2, ""

    .line 2491
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2492
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2494
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 2496
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 2499
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 2500
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2501
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2506
    :cond_5a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 2507
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2509
    :cond_63
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2511
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2512
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2520
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 2522
    :goto_74
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_be

    .line 2523
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7e} :catch_7f

    goto :goto_74

    .line 2528
    :catch_7f
    move-exception v0

    move-object v1, v2

    .line 2529
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to copy APK: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " got exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2531
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to copy APK to install directory. Got exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2525
    :cond_be
    :try_start_be
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2526
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c4} :catch_7f

    .line 2539
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_c6
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2540
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_ce} :catch_ee

    move-result v3

    if-nez v3, :cond_10b

    .line 2549
    :goto_d1
    if-eqz v0, :cond_10a

    .line 2550
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Set permission of APK file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to readable failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2544
    :catch_ee
    move-exception v1

    .line 2545
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to set file permissions of APK: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 2554
    :cond_10a
    return-object v2

    :cond_10b
    move v0, v1

    goto :goto_d1
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V
    .registers 9

    .prologue
    .line 66
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_12} :catch_37
    .catchall {:try_start_11 .. :try_end_12} :catchall_5d

    :try_start_12
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v3, v2}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_34

    if-eqz v1, :cond_30

    :try_start_21
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_37
    .catchall {:try_start_21 .. :try_end_24} :catchall_5d

    move-result-object v0

    :try_start_25
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_30} :catch_6c
    .catchall {:try_start_25 .. :try_end_30} :catchall_65

    :cond_30
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    :goto_33
    return-void

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit p0

    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_37} :catch_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_5d

    :catch_37
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovery of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Re-trying in 5 secs. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-direct {p0, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_6a

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    goto :goto_33

    :catchall_5d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_61
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    throw v0

    :catchall_65
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_61

    :catchall_6a
    move-exception v0

    goto :goto_61

    :catch_6c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3b
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 66
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    return-void
.end method

.method private c(Lcom/absolute/android/persistservice/j;)V
    .registers 9

    .prologue
    .line 1797
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1798
    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v2

    .line 1802
    const/4 v0, 0x0

    .line 1804
    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_12} :catch_37
    .catchall {:try_start_11 .. :try_end_12} :catchall_5d

    .line 1805
    :try_start_12
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 1806
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v3, v2}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1807
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_34

    .line 1809
    if-eqz v1, :cond_30

    .line 1810
    :try_start_21
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_37
    .catchall {:try_start_21 .. :try_end_24} :catchall_5d

    move-result-object v0

    .line 1814
    :try_start_25
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1817
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_30} :catch_6c
    .catchall {:try_start_25 .. :try_end_30} :catchall_65

    .line 1826
    :cond_30
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    .line 1827
    :goto_33
    return-void

    .line 1807
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit p0

    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_37} :catch_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_5d

    .line 1820
    :catch_37
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1821
    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovery of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Re-trying in 5 secs. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1823
    const/4 v0, 0x5

    invoke-direct {p0, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_6a

    .line 1826
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    goto :goto_33

    :catchall_5d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_61
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)V

    throw v0

    :catchall_65
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_61

    :catchall_6a
    move-exception v0

    goto :goto_61

    .line 1820
    :catch_6c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3b
.end method

.method private c(Ljava/lang/String;I)V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 2593
    new-instance v1, Lcom/absolute/android/persistservice/k;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/k;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    .line 2597
    :try_start_a
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2599
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2600
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2601
    array-length v4, v3

    move v1, v0

    :goto_1a
    if-ge v1, v4, :cond_53

    aget-object v5, v3, v1

    .line 2602
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deletePackage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 2604
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invoking deletePackage() for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/aa;->d(Ljava/lang/String;)V

    .line 2606
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    :cond_53
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    monitor-enter v1
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_56} :catch_dc
    .catchall {:try_start_a .. :try_end_56} :catchall_f6

    .line 2613
    :goto_56
    :try_start_56
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    invoke-static {v2}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistservice/k;)Z
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_d9

    move-result v2

    if-nez v2, :cond_105

    .line 2616
    :try_start_5e
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "waiting on deletePackage() completion for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/aa;->d(Ljava/lang/String;)V

    .line 2618
    if-lez v0, :cond_fa

    .line 2620
    invoke-direct {p0, p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 2621
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deletePackage() timed out, but completed for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_99} :catch_b6
    .catchall {:try_start_5e .. :try_end_99} :catchall_d9

    .line 2622
    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_d9

    .line 2655
    iput-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    :goto_9c
    return-void

    .line 2601
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1a

    .line 2624
    :cond_a1
    :try_start_a1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.deletePackage() timed out for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b6} :catch_b6
    .catchall {:try_start_a1 .. :try_end_b6} :catchall_d9

    .line 2633
    :catch_b6
    move-exception v0

    .line 2634
    :try_start_b7
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deletePackage() for package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got interrupted exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2635
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invocation of PackageManager.deletePackage() was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2648
    :catchall_d9
    move-exception v0

    monitor-exit v1
    :try_end_db
    .catchall {:try_start_b7 .. :try_end_db} :catchall_d9

    :try_start_db
    throw v0
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_dc} :catch_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_f6

    .line 2649
    :catch_dc
    move-exception v0

    .line 2650
    :try_start_dd
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.deletePackage() threw exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f6
    .catchall {:try_start_dd .. :try_end_f6} :catchall_f6

    .line 2655
    :catchall_f6
    move-exception v0

    iput-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    throw v0

    .line 2630
    :cond_fa
    add-int/lit8 v0, v0, 0x1

    .line 2631
    :try_start_fc
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_103
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_103} :catch_b6
    .catchall {:try_start_fc .. :try_end_103} :catchall_d9

    goto/16 :goto_56

    .line 2639
    :cond_105
    :try_start_105
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    invoke-static {v0}, Lcom/absolute/android/persistservice/k;->b(Lcom/absolute/android/persistservice/k;)Z

    move-result v0

    if-ne v0, v9, :cond_126

    .line 2641
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deletePackage() completed successfully for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->d(Ljava/lang/String;)V

    .line 2643
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_105 .. :try_end_122} :catchall_d9

    .line 2655
    iput-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    goto/16 :goto_9c

    .line 2645
    :cond_126
    :try_start_126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invocation of PackageManager.deletePackage() failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_d9
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.absolute.persistence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2885
    .line 2886
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2888
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2889
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_12

    .line 2893
    :goto_e
    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :catch_12
    move-exception v1

    move v1, v0

    goto :goto_e
.end method

.method private d(Ljava/lang/String;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2907
    .line 2908
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2910
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2911
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    .line 2914
    :goto_e
    if-eqz v1, :cond_13

    if-ne v1, p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    :catch_14
    move-exception v1

    move v1, v0

    goto :goto_e
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 2928
    .line 2931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2932
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2934
    if-eqz v2, :cond_22

    .line 2935
    array-length v3, v2

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_1e

    aget-object v4, v2, v1

    .line 2936
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2937
    const/4 v0, 0x1

    .line 2950
    :cond_1e
    return v0

    .line 2935
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2943
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkIsCallingPackage() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. Unable to get calling packages for UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2946
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2947
    throw v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/l;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/l;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2990
    monitor-enter p0

    const/4 v1, 0x0

    .line 2992
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2993
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2994
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2995
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 2996
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_24
    .catchall {:try_start_2 .. :try_end_22} :catchall_52

    .line 3002
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 2998
    :catch_24
    move-exception v0

    .line 2999
    :try_start_25
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable delete APK file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_52

    goto :goto_22

    .line 2990
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Lcom/absolute/android/persistservice/k;

    return-object v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3014
    monitor-enter p0

    if-eqz p1, :cond_11

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 3015
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_25
    .catchall {:try_start_3 .. :try_end_11} :catchall_49

    .line 3026
    :cond_11
    :goto_11
    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3028
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_23} :catch_4c
    .catchall {:try_start_11 .. :try_end_23} :catchall_49

    .line 3034
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 3017
    :catch_25
    move-exception v0

    .line 3018
    :try_start_26
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to delete copy of APK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_49

    goto :goto_11

    .line 3014
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3030
    :catch_4c
    move-exception v0

    .line 3031
    :try_start_4d
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to delete install folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4d .. :try_end_73} :catchall_49

    goto :goto_23
.end method

.method private g()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1126
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1128
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1130
    array-length v5, v4

    move v2, v1

    :goto_12
    if-ge v2, v5, :cond_50

    aget-object v0, v4, v2

    .line 1131
    const/16 v6, 0x40

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    move v0, v1

    :goto_20
    if-ge v0, v7, :cond_34

    aget-object v8, v6, v0

    .line 1135
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Ljava/util/Hashtable;

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 1152
    :cond_30
    return v10

    .line 1131
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1148
    :cond_34
    const-string v0, "android.uid.system:1000"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_41} :catch_48

    move-result v0

    if-nez v0, :cond_30

    .line 1130
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 1161
    :catch_48
    move-exception v0

    .line 1162
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v2, "Unable to get Package for calling UID. Denying access."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1168
    :cond_50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not authorized to access ABT Persistence Service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic h(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/q;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    return-object v0
.end method

.method private h()V
    .registers 7

    .prologue
    .line 2960
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 2961
    if-eqz v1, :cond_49

    .line 2962
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_49

    aget-object v3, v1, v0

    .line 2963
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2967
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2968
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_28

    .line 2969
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2971
    :cond_28
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_30

    .line 2962
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2974
    :catch_30
    move-exception v0

    .line 2975
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to clean up fallbacks, got exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 2977
    :cond_49
    return-void
.end method

.method static synthetic i(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/ac;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    return-object v0
.end method

.method static synthetic j(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .registers 18

    .prologue
    .line 885
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 886
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_10
    if-nez p2, :cond_1a

    .line 889
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version argument is invalid (0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_1a
    if-eqz p3, :cond_22

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 892
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Download URL argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_2a
    if-eqz p4, :cond_32

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3a

    .line 895
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Download IP adress argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_3a
    if-eqz p5, :cond_42

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    .line 898
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digital signature argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_4a
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 901
    new-instance v0, Lcom/absolute/android/persistservice/e;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    .line 905
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 906
    return-void
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .registers 2

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 450
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .registers 14

    .prologue
    .line 851
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 852
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_10
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 855
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access key argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_20
    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 858
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Update URL argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_30
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 864
    new-instance v0, Lcom/absolute/android/persistservice/g;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/absolute/android/persistservice/g;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    .line 868
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 869
    return-void
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .registers 3

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 462
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ac;->d()Ljava/lang/String;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 703
    :cond_e
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/ac;->b(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 707
    :cond_1e
    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 747
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_a} :catch_1f2

    .line 754
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Persistence version = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v4

    .line 758
    if-nez v4, :cond_b5

    .line 759
    const-string v0, "There are no managed applications\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_45
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    .line 824
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\nPersisted partition: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", available = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ls -l "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Contents:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_a .. :try_end_b0} :catchall_1ef

    .line 835
    :goto_b0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_b5
    :try_start_b5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 764
    const-string v0, "Managed Applications ---\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    array-length v6, v4

    move v2, v1

    :goto_c2
    if-ge v2, v6, :cond_45

    aget-object v7, v4, v2

    .line 767
    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e4
    .catchall {:try_start_b5 .. :try_end_e4} :catchall_1ef

    .line 773
    const/4 v0, 0x0

    :try_start_e5
    invoke-virtual {v5, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 774
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_eb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e5 .. :try_end_eb} :catch_1c7
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_1ef

    .line 777
    :goto_eb
    if-nez v0, :cond_1cb

    .line 778
    :try_start_ed
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Install status: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is currently not installed\n\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :goto_105
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/p;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_1a0

    .line 787
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "APK path = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "APK digest = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v9

    .line 791
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "flags = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_164

    .line 793
    const-string v10, ": INSTALL_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_164
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_16d

    .line 796
    const-string v10, ": UNINSTALL_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_16d
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_176

    .line 799
    const-string v10, ": DOWNLOAD_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_176
    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_17f

    .line 802
    const-string v9, ": DELETE_PERSISTED_FILES_PENDING "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_17f
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Update attempt count = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    :cond_1a0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 809
    if-nez v0, :cond_1fc

    .line 810
    const-string v0, "No pending install AppProfile\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :goto_1ad
    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1bd

    .line 817
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_1bd
    const-string v0, "--------\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_c2

    :catch_1c7
    move-exception v0

    move v0, v1

    goto/16 :goto_eb

    .line 781
    :cond_1cb
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Install status: version "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is currently installed\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1ed
    .catchall {:try_start_ed .. :try_end_1ed} :catchall_1ef

    goto/16 :goto_105

    .line 830
    :catchall_1ef
    move-exception v0

    :try_start_1f0
    monitor-exit p0

    throw v0
    :try_end_1f2
    .catch Ljava/lang/Throwable; {:try_start_1f0 .. :try_end_1f2} :catch_1f2

    .line 833
    :catch_1f2
    move-exception v0

    .line 832
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v2, "Exception occurred getting diagnostics: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b0

    .line 813
    :cond_1fc
    :try_start_1fc
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Pending install AppProfile = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_218
    .catchall {:try_start_1fc .. :try_end_218} :catchall_1ef

    goto :goto_1ad
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .registers 5

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 293
    monitor-enter p0

    .line 299
    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/aa;

    .line 301
    if-nez v0, :cond_1c

    .line 302
    new-instance v0, Lcom/absolute/android/persistservice/aa;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Lcom/absolute/android/persistservice/ad;

    invoke-direct {v0, v1, p1, v2}, Lcom/absolute/android/persistservice/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/ad;)V

    .line 303
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_1c
    new-instance v1, Lcom/absolute/android/persistservice/aj;

    invoke-direct {v1, v0}, Lcom/absolute/android/persistservice/aj;-><init>(Lcom/absolute/android/persistservice/aa;)V

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    return-object v1

    .line 307
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPersistedAppCount()I
    .registers 2

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 564
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->b()I

    move-result v0

    return v0
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .registers 6

    .prologue
    .line 600
    if-nez p1, :cond_a

    .line 601
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_a
    if-nez p2, :cond_14

    .line 605
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified fileName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified fileName argument is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_22
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_30
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 619
    new-instance v0, Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/absolute/android/persistservice/ab;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/aa;)V

    .line 622
    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ac;->a()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 283
    const/16 v0, 0xc2f

    return v0
.end method

.method public declared-synchronized install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 317
    monitor-enter p0

    if-nez p1, :cond_10

    .line 318
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AppProfile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 317
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    .line 323
    if-gtz v3, :cond_4e

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid version number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " specified in AppProfile for package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Install failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    throw v1

    .line 334
    :cond_4e
    if-eqz p2, :cond_56

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a8

    .line 335
    :cond_56
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_70

    .line 337
    :cond_62
    const-string v0, "Installation of application failed because no APK file nor URL was specified."

    .line 339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    throw v1

    :cond_70
    move v0, v1

    .line 359
    :cond_71
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 360
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, v2}, Lcom/absolute/android/persistservice/p;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 364
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v4, p1, p2}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 369
    :cond_81
    if-nez v0, :cond_8e

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    if-ne v4, v1, :cond_8e

    .line 370
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 376
    :cond_8e
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v3, p1, p2}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/absolute/android/persistservice/p;->a(Ljava/lang/String;I)V

    .line 381
    if-ne v0, v1, :cond_de

    .line 382
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 389
    :goto_9e
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_a6
    .catchall {:try_start_10 .. :try_end_a6} :catchall_d

    .line 390
    monitor-exit p0

    return-void

    .line 349
    :cond_a8
    :try_start_a8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_71

    .line 351
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installation of application APK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed because the APK file does not exist or is empty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    throw v1

    .line 385
    :cond_de
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_a8 .. :try_end_e1} :catchall_d

    goto :goto_9e
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 6

    .prologue
    .line 579
    if-nez p1, :cond_a

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Method Specification is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_a
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 584
    new-instance v0, Lcom/absolute/android/persistservice/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 587
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 588
    return-void
.end method

.method public refreshDeviceId()V
    .registers 3

    .prologue
    .line 716
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ac;->b(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .registers 7

    .prologue
    .line 635
    if-nez p1, :cond_a

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_a
    if-nez p2, :cond_14

    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IABTPing callback argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_14
    if-nez p3, :cond_1e

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified ping interval argument is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1e
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_2c
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 654
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-nez v0, :cond_56

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The AppProfile for the specified package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has \'monitor\' set to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_56
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 665
    return-void
.end method

.method public setAllPersistence(Z)V
    .registers 3

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 551
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->a(Z)V

    .line 554
    return-void
.end method

.method public declared-synchronized setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 7

    .prologue
    .line 474
    monitor-enter p0

    if-nez p1, :cond_e

    .line 475
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App Profile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 474
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 477
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 478
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/p;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found. Cannot update its AppProfile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string/jumbo v2, "setApplicationProfile() failed: "

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    throw v1

    .line 490
    :cond_40
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    .line 491
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    .line 493
    if-eq v1, v2, :cond_94

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " specified in the AppProfile for package name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the existing version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Use the install() API if you wish to install a new version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setApplicationProfile() failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    throw v1

    .line 505
    :cond_94
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 506
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_9e
    .catchall {:try_start_e .. :try_end_9e} :catchall_b

    .line 507
    monitor-exit p0

    return-void
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 519
    if-nez p1, :cond_a

    .line 520
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Package name argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_a
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found. Cannot update its \'persist\' flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string/jumbo v2, "setPersistence() failed: "

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    throw v1

    .line 530
    :cond_35
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 531
    monitor-enter p0

    .line 534
    :try_start_39
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 535
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    .line 536
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 537
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    if-eq p1, v1, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The newState is not a valid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_12
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 251
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getState()I

    move-result v3

    .line 254
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Lcom/absolute/android/persistservice/ac;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/ac;->a(I)V

    .line 255
    if-eq v3, p1, :cond_4f

    move v0, v1

    .line 257
    :goto_21
    if-eqz v0, :cond_4e

    .line 259
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Persistence state was changed from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 264
    if-ne p1, v1, :cond_4e

    .line 269
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)V

    .line 275
    :cond_4e
    return-void

    :cond_4f
    move v0, v2

    .line 255
    goto :goto_21
.end method

.method public testFirmwareUpdate()V
    .registers 3

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 727
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Testing firmware update ..."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    .line 733
    return-void
.end method

.method public declared-synchronized uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 24

    .prologue
    .line 399
    monitor-enter p0

    if-nez p1, :cond_e

    .line 400
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Package name argument is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 399
    :catchall_b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 402
    :cond_e
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 407
    if-nez v3, :cond_55

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_b

    move-result-object v3

    .line 412
    const/4 v4, 0x0

    :try_start_26
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 416
    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lcom/absolute/android/persistservice/p;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_55} :catch_77
    .catchall {:try_start_26 .. :try_end_55} :catchall_b

    .line 429
    :cond_55
    :try_start_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/p;->f(Ljava/lang/String;)I

    move-result v3

    .line 431
    if-eqz p2, :cond_9d

    .line 432
    or-int/lit8 v3, v3, 0x8

    .line 437
    :goto_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Lcom/absolute/android/persistservice/p;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;I)V

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_b

    .line 440
    monitor-exit p0

    return-void

    .line 422
    :catch_77
    move-exception v3

    :try_start_78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t uninstall. The package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Lcom/absolute/android/persistservice/aa;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    throw v4
    :try_end_9d
    .catchall {:try_start_78 .. :try_end_9d} :catchall_b

    .line 435
    :cond_9d
    and-int/lit8 v3, v3, -0x9

    goto :goto_63
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 675
    if-nez p1, :cond_a

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_a
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_18
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 686
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)V

    .line 689
    return-void
.end method
