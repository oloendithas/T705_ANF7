.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$3;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->showHandwritingLanguageSettingDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 212
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
