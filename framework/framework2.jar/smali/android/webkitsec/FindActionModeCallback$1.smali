.class Landroid/webkitsec/FindActionModeCallback$1;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/FindActionModeCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/FindActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkitsec/FindActionModeCallback;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback$1;->this$0:Landroid/webkitsec/FindActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Landroid/webkitsec/FindActionModeCallback$1;->this$0:Landroid/webkitsec/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkitsec/FindActionModeCallback;->finish()V

    .line 108
    return-void
.end method
