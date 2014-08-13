.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialFixedInfo"
.end annotation


# instance fields
.field private mSdFixedInfoName:Ljava/lang/String;

.field private mSdFixedInfoNumber:Ljava/lang/String;

.field private mSdFixedInfoPos:I

.field private mSdFixedInfoType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pos"    # I
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoType:Ljava/lang/String;

    .line 277
    iput p3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I

    .line 278
    iput-object p4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoNumber:Ljava/lang/String;

    .line 279
    iput-object p5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoName:Ljava/lang/String;

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;

    .prologue
    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    .prologue
    .line 269
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoNumber:Ljava/lang/String;

    return-object v0
.end method
