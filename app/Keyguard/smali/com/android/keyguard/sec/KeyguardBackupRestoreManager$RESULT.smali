.class public final enum Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;
.super Ljava/lang/Enum;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

.field public static final enum FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

.field public static final enum OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->$VALUES:[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->value:I

    .line 60
    iput p3, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->value:I

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;
    .registers 2

    .prologue
    .line 54
    const-class v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->$VALUES:[Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->value:I

    return v0
.end method
