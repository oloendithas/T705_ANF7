.class public Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;
.super Landroid/webkit/WebView;
.source "AnimatableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/widget/AnimatableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/widget/AnimatableImageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/widget/AnimatableImageView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;->this$0:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .line 46
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method
