<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="icon-next-heart fa fa-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>

<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>
{% if theme.busuanzi %}
<div class="site-visit-count">
  <span id="busuanzi_container_site_pv">
      本站已被浏览<span id="busuanzi_value_site_pv"></span>次
  </span>
</div>
<div class="visit-count">
  <span id="busuanzi_container_site_uv">
      你是第<span id="busuanzi_value_site_uv"></span>个到访的小伙伴
  </span>
</div>
{% endif %}



{% block footer %}{% endblock %}
