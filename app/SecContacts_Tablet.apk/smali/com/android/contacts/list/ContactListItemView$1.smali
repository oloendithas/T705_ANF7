.class Lcom/android/contacts/list/ContactListItemView$1;
.super Ljava/lang/Object;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactListItemView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView$1;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method
