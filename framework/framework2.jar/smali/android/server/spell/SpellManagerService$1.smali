.class Landroid/server/spell/SpellManagerService$1;
.super Ljava/lang/Object;
.source "SpellManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/spell/SpellManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/spell/SpellManagerService;


# direct methods
.method constructor <init>(Landroid/server/spell/SpellManagerService;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Landroid/server/spell/SpellManagerService$1;->this$0:Landroid/server/spell/SpellManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 74
    # getter for: Landroid/server/spell/SpellManagerService;->DEBUG:Z
    invoke-static {}, Landroid/server/spell/SpellManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 75
    const-string v0, "SpellManagerService"

    const-string v1, "Begin to scan spellscrolls..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_d
    iget-object v0, p0, Landroid/server/spell/SpellManagerService$1;->this$0:Landroid/server/spell/SpellManagerService;

    # invokes: Landroid/server/spell/SpellManagerService;->updateSpellScrollInfo()V
    invoke-static {v0}, Landroid/server/spell/SpellManagerService;->access$100(Landroid/server/spell/SpellManagerService;)V

    .line 80
    # getter for: Landroid/server/spell/SpellManagerService;->DEBUG:Z
    invoke-static {}, Landroid/server/spell/SpellManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 81
    const-string v0, "SpellManagerService"

    const-string v1, "Finish to scan spellscrolls..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1f
    return-void
.end method
