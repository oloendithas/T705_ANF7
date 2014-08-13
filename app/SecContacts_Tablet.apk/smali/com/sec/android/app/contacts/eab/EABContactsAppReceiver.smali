.class public Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EABContactsAppReceiver.java"


# static fields
.field private static final IMS_READY_ACTION:Ljava/lang/String; = "com.sec.siso.imsservice.IMS_SERVICE_READY_EVENT"

.field private static final IMS_SUBSCRIBE:Ljava/lang/String; = "com.sec.siso.SUBSCRIBE"

.field private static final IMS_SUBSCRIBE_LOGS:Ljava/lang/String; = "com.sec.siso.logs.SUBSCRIBE"

.field public static TAG:Ljava/lang/String;

.field public static phnnumber:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSyncStateReceiver:Landroid/content/BroadcastReceiver;

.field readContactsTask:Lcom/sec/android/app/contacts/eab/ReadContactsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "EAB-ContactsAppReceiver"

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->phnnumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    new-instance v0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$1;-><init>(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->mSyncStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private RegisterForSyncState()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Registerforsyncstate  RaniVenkat"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "com.verizon.contacts.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "com.sec.contacts.EAS_SYNC_STATE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->mSyncStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Registerforsyncstate  RaniVenkat Exiting "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;->mContext:Landroid/content/Context;

    .line 144
    return-void
.end method
