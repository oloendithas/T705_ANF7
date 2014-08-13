.class final Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$12;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lcom/touchtype_fluency/LoggingListener$Level;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 538
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$23;->$SwitchMap$com$touchtype_fluency$LoggingListener$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 551
    const-string v0, "SamsungIME"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "SamsungIME"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :pswitch_1
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "SamsungIME"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
