.class Lcom/android/keyguard/KeyguardHostView$8;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1600(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 1129
    :cond_12
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 1133
    if-eqz p2, :cond_16

    .line 1134
    check-cast p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 1135
    .local v0, "appWidgetId":I
    if-eqz v0, :cond_16

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    .line 1137
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$1700(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1140
    .end local v0    # "appWidgetId":I
    :cond_16
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .registers 3

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1600(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 1147
    :cond_12
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 1122
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->userActivity()V

    .line 1117
    return-void
.end method
