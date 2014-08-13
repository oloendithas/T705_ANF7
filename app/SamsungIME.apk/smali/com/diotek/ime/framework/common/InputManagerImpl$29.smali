.class Lcom/diotek/ime/framework/common/InputManagerImpl$29;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 9760
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9763
    const-string v4, "writingbuddyservice.inputLanguage"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9764
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 9765
    invoke-static {v0}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;)I

    move-result v2

    .line 9766
    .local v2, "langId":I
    sparse-switch v2, :sswitch_data_0

    .line 9783
    const/high16 v4, -0x10000

    and-int/2addr v2, v4

    .line 9786
    :sswitch_0
    iget-object v4, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 9787
    .local v3, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 9788
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "input_language"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9789
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9791
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "langId":I
    .end local v3    # "preference":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 9766
    :sswitch_data_0
    .sparse-switch
        0x656e4155 -> :sswitch_0
        0x656e4742 -> :sswitch_0
        0x656e5553 -> :sswitch_0
        0x65734553 -> :sswitch_0
        0x65735553 -> :sswitch_0
        0x66724341 -> :sswitch_0
        0x66724652 -> :sswitch_0
        0x6d794d4d -> :sswitch_0
        0x6d795a57 -> :sswitch_0
        0x70744252 -> :sswitch_0
        0x70745054 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method
