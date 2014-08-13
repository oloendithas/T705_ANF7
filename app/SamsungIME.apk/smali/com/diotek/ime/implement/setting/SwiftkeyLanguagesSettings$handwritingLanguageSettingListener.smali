.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handwritingLanguageSettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .param p2, "x1"    # Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/high16 v4, 0x34000000

    const/4 v3, 0x1

    .line 226
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->sendSupportLanguage()V
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    .line 227
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 228
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 229
    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "mDeviceType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.handwritingsearch.HandwritingLanguageTablet"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "handwriting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 246
    :goto_0
    return-void

    .line 238
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "handwriting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$HandwritingLanguageActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
