using System;
using System.Reflection;

namespace TEAMUP_FRAMEWORK_WEBPAGES.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}