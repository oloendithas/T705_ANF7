.class public Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;
.super Ljava/lang/Object;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CeSettingsParameter"
.end annotation


# instance fields
.field private mKey:I

.field private mValue:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;II)V
    .locals 0
    .param p2, "key"    # I
    .param p3, "value"    # I

    .prologue
    .line 740
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput p2, p0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->mKey:I

    .line 742
    iput p3, p0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->mValue:I

    .line 743
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->mKey:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$CeSettingsParameter;->mValue:I

    return v0
.end method
