.class final Landroid/view/View$UnsetPressedState;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 19694
    iput-object p1, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 19694
    invoke-direct {p0, p1}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 19696
    iget-object v0, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 19697
    return-void
.end method
