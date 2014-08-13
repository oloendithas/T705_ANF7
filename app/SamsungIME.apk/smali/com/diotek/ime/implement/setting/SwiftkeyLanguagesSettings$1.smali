.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 100
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$1;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    return-void
.end method
