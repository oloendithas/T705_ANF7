.class public Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandParams"
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;->type:Ljava/lang/String;

    .line 2213
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;->value:Ljava/lang/String;

    .line 2214
    return-void
.end method
