.class Lcom/samsung/android/airbutton/AirButtonImpl$1;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$1;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSideButtonClicked(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl$1;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverButtonSecondary(Landroid/view/MotionEvent;)V

    .line 286
    return-void
.end method
