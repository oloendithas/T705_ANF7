.class Lcom/android/contacts/quickcontact/QuickContactActivity$14$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$14;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$14;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$14;)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$14$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$14$1$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14$1$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$14$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->showContent(Ljava/lang/Runnable;Z)V

    .line 1334
    return-void
.end method
