.class final Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;
.super Ljava/lang/Object;
.source "GuideDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GuideDataClass"
.end annotation


# instance fields
.field public isMsg:I

.field public isPointer:I

.field public msgRes:I

.field public nextStep:I

.field public pickerType:I

.field public pointerX:I

.field public pointerY:I

.field public previousStep:I

.field public rectView:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

.field public vTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;Landroid/view/View;IIIII)V
    .locals 3
    .param p2, "_vTarget"    # Landroid/view/View;
    .param p3, "_isMsg"    # I
    .param p4, "_isPointer"    # I
    .param p5, "_msgRes"    # I
    .param p6, "_previousStep"    # I
    .param p7, "_nextStep"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 98
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    .line 99
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    .line 100
    iput p6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->previousStep:I

    .line 101
    iput p7, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->nextStep:I

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    iput p5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    .line 105
    iput p3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isMsg:I

    .line 106
    iput p4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->msgRes:I

    .line 109
    iput v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isMsg:I

    .line 110
    iput v2, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->isPointer:I

    .line 111
    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    .line 112
    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    .line 113
    iput v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    goto :goto_0
.end method


# virtual methods
.method public caculate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 122
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    .line 127
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 130
    .local v2, "vParent":Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09031f

    if-eq v3, v4, :cond_0

    .line 131
    iget v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    .line 132
    iget v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "vParent":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "vParent":Landroid/view/View;
    goto :goto_0

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 139
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 140
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 141
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 143
    iget v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    .line 144
    iget v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->vTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$000(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 147
    .local v0, "heightActionBar":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    sub-int/2addr v4, v0

    if-ge v3, v4, :cond_3

    .line 148
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    .line 152
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 153
    iput v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->isUsingTwoPanel:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$300(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->type:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$100(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->this$0:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->step:I
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->access$200(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    if-nez v3, :cond_2

    .line 158
    iput v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    .line 162
    .end local v0    # "heightActionBar":I
    .end local v2    # "vParent":Landroid/view/View;
    :cond_2
    return-void

    .line 150
    .restart local v0    # "heightActionBar":I
    .restart local v2    # "vParent":Landroid/view/View;
    :cond_3
    iput v6, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pickerType:I

    goto :goto_1
.end method

.method public equal(Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;)Z
    .locals 2
    .param p1, "newGuideData"    # Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    iget v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->pointerY:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer$GuideDataClass;->rectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
