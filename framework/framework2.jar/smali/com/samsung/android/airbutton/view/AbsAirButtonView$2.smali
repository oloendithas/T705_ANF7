.class Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;
.super Ljava/lang/Object;
.source "AbsAirButtonView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    if-eqz v0, :cond_e

    .line 278
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 280
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
