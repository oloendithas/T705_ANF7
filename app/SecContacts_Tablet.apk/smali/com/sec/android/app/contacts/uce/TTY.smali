.class public Lcom/sec/android/app/contacts/uce/TTY;
.super Ljava/lang/Object;
.source "TTY.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTY"

.field private static context:Landroid/content/Context;

.field private static isTTYenabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/uce/TTY;->isTTYenabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object p1, Lcom/sec/android/app/contacts/uce/TTY;->context:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public static getTTYState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    sget-object v1, Lcom/sec/android/app/contacts/uce/TTY;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "settingsTtyMode":I
    const-string v1, "TTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetched TTY mode as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 33
    sput-boolean v4, Lcom/sec/android/app/contacts/uce/TTY;->isTTYenabled:Z

    .line 35
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/contacts/uce/TTY;->isTTYenabled:Z

    return v1

    .line 29
    :pswitch_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/contacts/uce/TTY;->isTTYenabled:Z

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
