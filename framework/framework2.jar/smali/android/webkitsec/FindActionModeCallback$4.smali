.class Landroid/webkitsec/FindActionModeCallback$4;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 178
    iput-object p1, p0, Landroid/webkitsec/FindActionModeCallback$4;->this$0:Landroid/webkitsec/FindActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    const/16 v0, 0x3d

    if-ne p2, v0, :cond_6

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
